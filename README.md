# Send101::API

This is a build of a messaging services for school, business and organizations that want to take advantage of texting, calling and email (etc) all from one location. Initially started off of the idea from [Sparkroad](www.sparkroad.com) this is a API only version of the service open to the world.

## Setup
Make sure to configure 'local_and_heroku_env_vars.rb' in config/initializers for thrid parties resources to work (twilio, Amazon S3) etc
See Dummy_local_and_heroku_env_vars.rb for details.

## NOTE:
This is build using [rails_api](https://github.com/rails-api/rails-api)).

Stack:

* Ruby version: 2.0

* Rails version: 4.0

* Database:Postgres

* Services (job queues, cache servers, search engines, etc.) TBD: For now we are starting with Twilio for all SMS, calls need.
 
* ...


Please feel free to add to this readme. =)
