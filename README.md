# README

in database.yml file
Edit your db password in default
then run your migrations
----------
uncomment  this line in routes file # get '/pull_data', to: 'grades#pull_data'

in grades_controller edit seat_number scopes you want to fetch
run server
send a get request to 'grades/pull_data'


