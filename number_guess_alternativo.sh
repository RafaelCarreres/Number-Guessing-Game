#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate random number
RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))

# Enter your username
echo "Enter your username:"
read USERNAME
SEARCH_NAME=$($PSQL "SELECT username FROM usernames WHERE username='$USERNAME'")
SEARCH_GAMES_PLAYED=$($PSQL "SELECT games_played FROM usernames  WHERE username='$USERNAME'")
SEARCH_BEST_SCORE=$($PSQL "SELECT best_score FROM usernames  WHERE username='$USERNAME'")

if [[ -z $SEARCH_NAME ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  NEW_USER=true
else
  echo "Welcome back, $USERNAME! You have played $SEARCH_GAMES_PLAYED games, and your best game took $SEARCH_BEST_SCORE guesses."
  NEW_USER=false
fi

# GAME

NUMBER_GUESSES=0
while [[ $NUMBER != $RANDOM_NUMBER ]]
do
# "Guess the secret number between 1 and 1000:"
echo "Guess the secret number between 1 and 1000:"
read NUMBER
((NUMBER_GUESSES+=1))
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif (( $RANDOM_NUMBER < $NUMBER ))
  then
    echo "It's lower than that, guess again:"
  elif (( $RANDOM_NUMBER > $NUMBER ))
  then
    echo "It's higher than that, guess again:"
  fi
done
# You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!
echo  "You guessed it in $NUMBER_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

# INSERT DATA INTO DATABASE
if [[ -z $SEARCH_NAME ]]
then
  INSERT_NAME_GAMES_PLAYED_RESULT=$($PSQL "INSERT INTO usernames(username, games_played, best_score) VALUES('$USERNAME', 1, '$NUMBER_GUESSES')")
else
  ((SEARCH_GAMES_PLAYED+=1))
  INSERT_NAME_GAMES_PLAYED_RESULT=$($PSQL "UPDATE usernames SET games_played=$SEARCH_GAMES_PLAYED WHERE username='$USERNAME'")
  if (( $NUMBER_GUESSES < $SEARCH_BEST_SCORE ))
  then
    INSERT_NUMBER_GUESSES_RESULT=$($PSQL "UPDATE usernames SET best_score=$NUMBER_GUESSES WHERE username='$USERNAME'") 
  fi
fi
