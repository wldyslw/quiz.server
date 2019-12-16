class Question < ActiveRecord::Base
  has_many :answers

  def to_json(*)
    {
      id: id,
      title: title,
      answers: answers,
      has_many_correct_answers: answers.count(&:is_correct) > 1
    }.to_json
  end
end
