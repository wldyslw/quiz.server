require_relative './db'

def parseQuestions()
    question = Question.create(title: 'How do you do?')

    question.answers.create(text: 'Fine')
    question.answers.create(text: 'Awful')
    question.answers.create(text: 'Not bad not terrible')
end
