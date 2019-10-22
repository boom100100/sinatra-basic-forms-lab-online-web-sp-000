require_relative 'config/environment'
#require_relative 'views/create_puppy'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do

    myPuppy = Puppy.new(params[:name], params[:breed], params[:months_old])
    @name = myPuppy.name
    @breed = myPuppy.breed
    @age = myPuppy.months_old

    erb :display_puppy
  end

end
