########## GETS ##################

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:short_url' do
  # redirect to appropriate long url
end

get '/urls/list' do
  erb :urls
end

########## POSTS ##################

post '/urls' do
  @url = 
end
