#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR == 'year' ]]
  then
    continue
  fi

  # Get winner id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

  # If not found
  if [[ -z $WINNER_ID ]]
  then
    # Insert winner names into teams table
    INSERT_WINNER_NAMES=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    if [[ $INSERT_WINNER_NAMES == 'INSERT 0 1' ]]
    then
      echo Inserted name into teams, $WINNER
    fi

    # Get new winner id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  fi
  
  # Get opponent id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  
  # If not found
  if [[ -z $OPPONENT_ID ]]
  then
    # Insert opponent names into teams table
    INSERT_OPPONENT_NAMES=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

    if [[ $INSERT_OPPONENT_NAMES == 'INSERT 0 1' ]]
    then
      echo Inserted name into teams, $OPPONENT
    fi

    # Get new opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi

  # Insert year, round, winner_id, opponent_id, winner_goals, opponent_goals into games table
  INSERT_GAMES_VALUES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  if [[ $INSERT_GAMES_VALUES == 'INSERT 0 1' ]]
  then
    echo Inserted values into games, $INSERT_GAMES_VALUES
  fi
done < games.csv
