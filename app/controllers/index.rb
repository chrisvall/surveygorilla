get '/' do
  erb :index
end

post '/login' do 
	user = User.find_by(username: params[:username], password: params[:password])
	if user 
		session[:id] = user.id 
		redirect '/survey' 
	else 
		redirect '/'
	end 
end # comment more  about comments 


post '/signup' do
	password = params[:password]
	confirm = params[:confirm]
	if password == confirm
		username = params[:username]
		User.create(username: username, password: password)
		redirect '/survey' 
	else 
		redirect '/'
	end 
end 


get '/survey' do
  erb :survey
end

