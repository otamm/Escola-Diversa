Based on the the 'tutorialApp' repository.

A school web app. It has a header rendered on static pages, another rendered for users and yet another for staff, each with its specific functions.
The Principal is allowed to create teachers & students, teachers edit grades and post memos specific for each class and school year. Students only have access to posted info.
All users have an e-mail field; it allows for the Principal and the Teachers to recover their password and in the case of students, it is the e-mail of a next of kin, there mostly for school's staff use.

Deployment to Heroku:

$ heroku login
$ git push heroku master <pushes the master branch, which is supposed to be the most complete and functional of all.>
$ heroku pg:reset DATABASE <if a lot of new content was added/deleted>
$ heroku run rake db:migrate <if new migrations were added>
$ heroku run rake db:seed <if there are important new DB seeds>
$ heroku restart <if the DB was reseted>

Regex Table:

/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i :	full regex
/	                                   : start of regex
\A	                                 : match start of a string
[\w+\-.]+	                           : at least one word character, plus, hyphen, or dot
@	                                   : literal “at sign”
[a-z\d\-.]+	                         : at least one letter, digit, hyphen, or dot
\.                                   : literal dot
[a-z]+	                             : at least one letter
\z	                                 : match end of a string
/	                                   : end of regex
i	                                   : case-insensitive

APP BASIC STRUCTURE:

-app/:
  where the models, views and controllers are located. Most of the customized code goes here.
