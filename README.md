# README



<h3>in database.yml file</h3>
<h3>Edit your db password in default</h3>
<h3>then run your migrations</h3>


uncomment  this line in routes file # get '/pull_data', to: 'grades#pull_data'

in grades_controller edit seat_number scopes you want to fetch
run server
send a get request to 'grades/pull_data'


