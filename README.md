# Ruby on Rails Sample app: Worker-Monitor #

This is a simple app that demonstrate the following features:

* Custom authentication module
* Rails6 app with pure JavaScript
* JS based Time functions

## Requirements ##


  * Ruby-2.6.3
  * Rails-6.0.2

## Configuration ##

Configure and download gems required by this app:

    bundle install
  
Initialize and setup the SQLite Database

    rails db:migrate

Seed the Database with the default Admin

    rails db:seed

## Using the app ##

### Admin module ###

to access the admin module use the following url:

    http://localhost:3000/admin
    
use the following admin to access the admin module:
    
    user: admin@admin.com
    password: 123123
    
NOTE: If you wish to create a new admin, you will have to create it from the Rails console

to access the workers list, use the NavBar link.

### Worker module ###

to access the worker module use the following url:

    http://localhost:3000
    
You can signup as a new worker to use the app.

### Future releases ###

Improve test coverage of the app
