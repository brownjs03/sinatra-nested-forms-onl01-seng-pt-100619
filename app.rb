require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do 
    "Welcome to the Nested Forms Lab!"
  end 
  
  get '/new' do 
    erb :'pirates/new'
  end 
  
  post '/pirates' do 
    @pirate = Pirate.new(params[:pirate])
  end 
  
  end
end
