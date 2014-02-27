get '/photos/new' do
	erb :"photos/new"
end

get '/photos/:photo_id' do
  @photo = Photo.find(params[:photo_id])
  erb :"photos/show"
end

post '/photos/new' do
  @photo = Photo.new(params[:photo])
  if @photo.save
  	redirect to ""
  else
  	erb :"photos/new"
  end
end