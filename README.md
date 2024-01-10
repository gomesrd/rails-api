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

rails generate controller api/v1/articles index show create update destroy --skip-helper --skip-assets 
--skip-template-engine --skip-test-framework

rails g model article title:string body:string author:string --skip-helper --skip-assets --skip-template-engine --skip-test-framework


bin/rake db:create

bin/rake db:migrate