get '/tests/all' do
  tests = Test.all
  erb :'/tests/all', locals: {tests: tests}
end