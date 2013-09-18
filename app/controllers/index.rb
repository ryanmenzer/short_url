########## GETS ##################

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:short_url' do
  @url = Url.find_by_short_url(params[:short_url])
  redirect to (@url.long_url)
end

get '/urls/list' do
  @urls = Url.all
  erb :urls
end

########## POSTS ##################

post '/urls' do
  @url = Url.new(params[:url])
  if @url.save
    redirect to('/')
  else
    erb :urls
  end
end
