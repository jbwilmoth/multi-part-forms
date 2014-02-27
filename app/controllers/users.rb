get '/' do
  @users = User.all
  erb :index
end

get '/users/new' do
  erb :"users/new"
end

get '/users/login' do
  erb :"users/login"
end


post '/' do
  # puts request.body.read
end

post "/users/login" do

end

post '/users/new' do
  user = User.new(params[:user])
  if user.save
    redirect to '/'
  else
    erb :"users/new"
  end
end

