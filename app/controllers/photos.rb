get '/photos/new/:album_id' do
	erb :"photos/new"
end

post '/photos/new/:album_id' do
  Photo.create({photo: params[:photo], album_id: params[:album_id]})
  redirect to '/album/#{params[:album_id]}'
end