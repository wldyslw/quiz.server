require 'sinatra'
require 'sinatra/activerecord'
require 'logger'

ActiveRecord::Base.logger = Logger.new('log/db.log', 'daily')

set :database, 'sqlite3:db/quiz.server.sqlite3'

Dir["#{Dir.pwd}/models/*.rb"].each { |f| require f }

get '/' do
    Question.first.title
end
