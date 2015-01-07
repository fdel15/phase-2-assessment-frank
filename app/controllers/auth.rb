get '/' do
  session[:tests] = Test.all
  if current_user
    erb :'/index'
  else
    erb :'auth/login', layout: false
  end
end

get '/signup' do
  if request.xhr?
    erb :'auth/signup_form', layout: false
  else
    erb :'auth/signup_form'
  end
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
  else
    #display error
  end
  redirect '/'
end

get '/login' do
  if request.xhr?
    erb :'auth/login_form', layout: false
  else
    erb :'auth/login_form'
  end
end

post '/login' do
  user = User.find_by(name: params[:user][:name])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
  else
    #display error
  end
  redirect '/'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
