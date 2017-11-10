# get '/users/:id' do # show
#   if session[:id] != nil
#     erb :'/welcome'
#   else
#     erb :'login/login'
#   end
# end

get '/registration/new' do # Registration
  erb :'registration/new'
end

post '/registration' do

  user = User.new(name: params[:name], password: params[:password])

  if user.save
    registration(user)
    redirect '/welcome'
  else
    erb :'registration/new'
  end
end
