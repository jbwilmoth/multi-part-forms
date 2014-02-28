get "/albums/new" do
  @user = User.first
  erb :"albums/new"
end

get "albums/:album_id" do
  @album = Album.find(params[:album_id])
  @photos = @album.photos
  erb :"albums/show"
end

post "/albums/new" do
  @album = Album.new(params[:album])
  if @album.save
  	redirect to "/albums/#{albums.id}"
  else
  	redirect to "/albums/new"
  end
end