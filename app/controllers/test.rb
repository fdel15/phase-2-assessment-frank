get '/tests/all' do
  tests = Test.all
  erb :'tests/all', locals: {tests: tests}
end

get '/test/:id' do |id|
  test = Test.find(id)
  erb :'tests/single', locals: {test: test}
end

post '/test/answer' do
  params[:answer][:user_id] = current_user.id
  answer = Answer.create(params[:answer])
  test_id = answer.test_id
  redirect "/test/#{test_id}"
end

