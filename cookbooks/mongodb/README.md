# mongodb

Installing the MongoDB Community Edition on Ubuntu
(based on [this info](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/))

This will:

* Install the official mongodb package repository from Mongo-org as a resource
* Install the mongodb-org package (i.e. install mongodb)
* Start it up

# So:

* To install and start Mongodb : `sudo chef-client --local-mode --runlist 'recipe[mongodb::install]'`
* To stop and remove Mongodb : `sudo chef-client --local-mode --runlist 'recipe[mongodb::remove]'`
