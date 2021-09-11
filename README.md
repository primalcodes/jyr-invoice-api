# Invoice API

Starter API app to use in conjunction with a front end application.

Things you may want to cover:

* Ruby version: 3.0.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails g scaffold invoice payment_date:date description payment_term:integer client_name client_email status:integer

rails g scaffold line_item invoice:references name quantity:integer price:integer

rails g model address addressable:references{polymorphic} street city state post_code country