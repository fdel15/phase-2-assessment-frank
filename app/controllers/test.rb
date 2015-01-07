get '/tests/all' do
  tests = Test.all
  erb :'tests/all', locals: {tests: tests}
end

get '/test/:id' do |id|
  test = Test.find(id)
  erb :'tests/single', locals: {test: test}
end


