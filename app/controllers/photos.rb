get '/photos/new' do
  erb :"photos/new"
end

post '/photos/new' do
  Photo.create({photo: params[:photo]})
  redirect to "/"
end