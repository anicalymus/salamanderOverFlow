helpers do

  def login(user)
    session[:id] = user.id
  end

  def registration(user)
    session[:name] = user.name
  end

end
