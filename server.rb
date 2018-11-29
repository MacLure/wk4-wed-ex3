require 'sinatra'

get '/home' do
    erb :index
  end

  get '/gallery' do
    erb :gallery
end

get '/portfolio' do
    erb :gallery
end

get '/about_me' do  
    @skills = ['git', 'HTML', 'CSS', 'Ruby']
    @interests = ['cats', 'art', 'music', 'films', 'coffee']
    erb :about_me
end

get '/favourites' do  
    @fav_links = [
        "http://www.wikipedia.org",
        "http://www.duckduckgo.com",
        "http://www.reddit.com"
    ] 
        erb :favourites
end

get '/' do
    redirect to('/home')
end