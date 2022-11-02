## you can import Ship Sticks Challenge.postman_collection.json file in the root of the project to Postman in order to get a collection of the api 

# instructions for installing the prerequisits of the project:
- install rbenv
- install ruby version 2.6.9 via rbenv
- install bundler gem
- install rails gem version 6.0.1
- install mongodb and make sure the mongod service is running

# instructions for running the project locally:
- go to the project directory via terminal
- use command ~ bundle install ~ to install the project packages
- use command ~ bundle exec rails s ~ to run the project

## to run  the script to populate the product with the products.json file: use command ~ bundle exec rake generator:products ~

# References:
- rbenv: https://github.com/rbenv/rbenv#using-package-managers
- ruby: you can check rbenv docs to see how to install specific ruby version here https://github.com/rbenv/rbenv#installing-ruby-versions
- bundler: use command ~ gem install bundler ~
- rails: use command ~ gem install rails -v 6.0.1 ~
- mongodb: https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/

