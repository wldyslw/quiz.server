require 'yaml'

seeds = YAML.safe_load File.read 'db/seeds.yml'

seeds.each do |question, answers|
  q = Question.create title: question
  answers.each do |answer|
    answer.each { |text, correct| q.answers.create text: text, is_correct: correct }
  end
end
