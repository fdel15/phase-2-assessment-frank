def current_user
  User.find(session[:user_id]) if session[:user_id]
end

def answer_id(question)
    question_answ = question.answers.map {|ans| ans.id}
    user_answ = current_user.answers.map {|ans| ans.id}

    possible_answ = question_answ + user_answ

    possible_answ.find {|id| possible_answ.count(id) > 1 }
end

def answer_object(question)
  Answer.find(answer_id(question))
end