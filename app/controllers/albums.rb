get "/album/new" do
  @user = User.first
  erb :"albums/new"
end

get "/album/:album_id" do
  @album = Album.find(params[:album_id])
  @photos = Photo.where(album_id: params[:album_id])
  erb :"albums/show"
end

post "/album/new" do
  album = Album.create({user_id: current_user.id, title: params[:title], photo: params[:photo]})
  redirect to '/album/#{album.id}'
end