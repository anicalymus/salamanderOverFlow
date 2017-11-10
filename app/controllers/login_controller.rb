get '/' do #home
  redirect '/login'
end

get '/welcome' do #temp
  'Welcome to the DBC overflow'
end

get '/login' do #show
  erb :'login/login'
end

post '/login' do #show
  p params
  @user = User.authenticate(params[:name], params[:password])
  if @user
    login(@user)
    redirect '/welcome'
  else
    @errors = ['Log in failed']
    erb :'login/login'
  end
end

# delete '/logout' do
#   session[:id] = nil
#   redirect '/login/login'
# end
