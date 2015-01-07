get '/answer' do
  erb :'answers/new'
end

post '/answer' do
  params[:answer][:user_id] = current_user.id
  answer = Answer.create(params[:answer])
  redirect "/test/#{answer.test_id}"
end

get '/answer/:id/edit' do |id|
  answer = Answer.find(id)
  erb :'answers/edit', locals: {answer: answer}
end

put '/answer/:id' do |id|
  answer = Answer.find(id)
  answer.update(params[:answer])
  if request.xhr?
    erb :'questions/single_question', locals: {question: answer.question}, layout: false
  else
    redirect "/test/#{answer.test_id}"
  end
  # redirect "/test/#{answer.test_id}"
end
