########## GETS ##################

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/urls/:short_url' do
  
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
