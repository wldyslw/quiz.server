question = Question.create(title: 'How do you do?')

answers = [
    'Fine',
    'Awful',
    'Not bad not terrible'
]

answers.each do |a|
    question.answers.create(text: a)
end
