# require 'active_record'
# require 'sqlite3'
# require 'logger'

# ActiveRecord::Base.logger = Logger.new(STDOUT)

# ActiveRecord::Base.establish_connection(
#     adapter: 'sqlite3',
#     database: ':memory:'
# )

# ActiveRecord::Schema.define do
#     create_table :questions, force: true do |t|
#         t.string :title
#     end
# end

# ActiveRecord::Schema.define do
#     create_table :answers, force: true do |t|
#         t.string :text
#         t.references :question
#     end
# end

# class ApplicationRecord < ActiveRecord::Base
#     self.abstract_class = true
# end

# class Question < ApplicationRecord
#     has_many :answers
# end

# class Answer < ApplicationRecord
#     belongs_to :question
# end
