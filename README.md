# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Project Requirement
#######################
* This app stores Users and the Groups they attend. Users have first names and last names. Groups have a name. Users can attend multiple groups and have roles in each group. 

* The roles are: Organizer, Presenter, and Participant.   The app should have all CRUD actions for Groups.   

* For Users the app should take a CSV file upload in a web ui of the following format: First Name, Last Name, Group Name, Role in Group   From this CSV the app should associate the Users to their Groups.   

* The show action for a Group should display its Users and their Roles.  
* The index action for a Group should display the Organizer(s).   

* Push your code to this git repository:  git@github.com:n2publishing/#{name_of_applicant}_meetup
########################

*
```ruby
rails g scaffold User first_name last_name
rails g scaffold Role name
rails g scaffold Group name
rails g scaffold Membership group:references user:references role:references
```


* Project setup

```ruby
# clone project and bundle install
bundle install

# create database and db migration 
rails db:create db:migrate

# run db:seed to delete all users, roles, groups, and memberships
rails db:seed

# start rails server
rails s

# go to localhost:3000
http://localhost:3000

# upload lib\members.csv on User page

