:: create empty rails app
::rails new TigerTrail
:: cd TigerTrail


rails generate scaffold subject name:string
rails generate scaffold campus name:string
rails generate scaffold building name:string campus:references
rails generate scaffold status name:string
rails generate scaffold instructor first_name:string last_name:string
rails generate scaffold semester year:integer season:string
rails generate scaffold course name:string course_number:string subject:references building:references instructor:references semester:references status:references campus:references

:: devise for user accounts
rails generate devise:install
rails generate devise student
rails generate migration AddInfoToStudent first_name:string last_name:string campus:references

rails generate scaffold day name:string

rails generate scaffold schedule student:references semester:references

:: run migrations just created
:: rails db:migrate

:: run seed files
::rails db:seed