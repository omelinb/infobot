
Infobot Test Task
-----------

Simple application with users and profiles.


System Dependencies
-------------------

- Ruby 2.6.5 (install with [rbenv](https://github.com/sstephenson/rbenv))
- Rails 6.0.2.1
- Redis
- PostgreSQL

Project Install
-------------------
```shell
git clone git@github.com:omelinb/infobot.git
bundle install
bundle exec sidekiq
```

Database creation
-----------------

Create database
```shell
rails db:create  
rails db:migrate  
```

