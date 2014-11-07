get '/' do
	erb :index
end

post '/login' do
	user = User.find_by(username: params[:username], password: params[:password])
	if user
		p user.id
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
		user = User.create(username: username, password: password)
		session[:id] = user.id
		redirect '/survey'
	else
		redirect '/'
	end
end

get '/logout' do

	session[:id] = nil
	redirect '/'

end

get '/survey' do
	erb :survey
end

