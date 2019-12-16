# Quiz App Server

Simple server with predefined data based on [Sinatra](http://sinatrarb.com/) and [ActiveRecord](https://github.com/rails/rails/tree/master/activerecord).

## Setup & Deploy

```sh
gem i
rake db:migrate
rake db:seeds # Before running this you can populate db/seeds.yml with any quiestions you want
ruby app.rb
```

Then try it out:

```sh
curl http://localhost:4567/getall
```
