# README

This is a simple Ruby on Rails application using APi to show a list of dog breeds the API supports, let them pick one of the breeds, and then show them a picture of that breed from the API.

It uses this [free API](https://dog.ceo/dog-api/) to show the user a random picture of a dog.

## Objective

You'll be using the API to show the user a list of dog breeds the API supports, let them pick one of the breeds, and then show them a picture of that breed from the API.

## Requirements
Install [Ruby 2.1.4](https://rubyinstaller.org/downloads/archives/) and [DevKit](https://github.com/vassilvk/slacker/wiki/Installing-Windows-Ruby-DevKit)

## Getting started

```
# 1. Clone the project
$ git clone git@github.com:inspired-solutions/rails-demo-project.git

# 2. Navigate to the new project
$ cd rails-demo-project

# 3. Bundle Install
$ gem install bundler
$ bundle install

# 4. Run migrations
$ rake db:migrate

# 5. Run Rails
$ rails -s
```

### Comands

* `gem install bundler`  Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.
* `bundle install` Use gem Bundler to install gems described in GemFile.rb
* `rake db:migrate` Run migrations

### Project structure
| File name 　　　　　　　　　　　　　　| Description 　　　　　　　　<br><br>| 
| :--  | :--         |
| `└── app/ `  | _Contains all files that are related to the Rails Application |\
| `　　├── assets` | This contains the static files required for the application’s front-end grouped into folders based on their type|
| `　　├── controllers` | This is where all the controller files go. Controllers are responsible for orchestrating the model and views.|
| `　　├── helper` | This is where all the helper functions for views reside. |
| `　　├── mailers` | The mailers directory contains the mail (as in “email”) specific functions for the application.  |
| `　　├── models` | All model files live in the app/models directory. Models act as object-relational mappers to the database tables that hold the data|
| `　　├── views` | The third part of the MVC architecture are the views. The files related to the views go into this directory |
| `├── bin` | This directory contains Binstubs for the Rails application. Binstubs are nothing but wrappers to run the gem executables scoped to your application |
| `├── config` | As the name suggests this contains all the application’s configuration files. The database connection and application behavior can be altered by the files inside this directory.|
| `├── db` | All the database related files go inside this folder. The configuration, schema, and migration files can be found here, along with any seed files. |
| `├── Gemfile` | The Gemfile is the place where all your app’s gem dependencies are declared.  |
| `├── Gemfile.lock` | Gemfile.lock holds the gem dependency tree, including all versions, for the app. |
| `├── lib` | lib directory is where all the application specific libraries goes. Application specific libraries are re-usable generic code extracted from the application. |
| `├── log` | This holds all the log files. Rails automatically creates files for each environment. |
| `├── test` | The folder name says it all. This holds all the test files for the app. A subdirectory is created for each component’s test files.|
| `├── vendor` | This is where the vendor files go, such as javascript libraries and CSS files, among others. Files added here will become part of the asset pipeline automatically.|
