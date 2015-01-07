get '/answer' do
  erb :'answers/new'
end

post '/answer' do
  params[:answer][:user_id] = current_user.id
  answer = Answer.create(params[:answer])
  test_id = answer.test_id
  redirect "/test/#{test_id}"
end