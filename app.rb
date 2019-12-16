require 'sinatra'
require 'sinatra/activerecord'
require 'logger'
require 'json'
Dir["#{Dir.pwd}/models/*.rb"].each { |f| require f }

Dir.mkdir 'log' unless Dir.exist? 'log'
ActiveRecord::Base.logger = Logger.new('log/db.log', 'daily')

set :database, 'sqlite3:db/quiz.server.sqlite3'

get '/getall' do
  all = Question.joins(:answers).group(:id)
  JSON.generate all.to_a
end
