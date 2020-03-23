
Infobot Test Task
-----------

Simple application that allow create users and edit their profiles.


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
bundle exec rails db:create  
bundle exec rails db:migrate  
```

Run tests
-----------------

```
bundle exec rspec spec
```
