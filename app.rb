require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/" do
    @piglatin = PigLatinizer.new(params[:user_text])
    erb :piglatin
  end

end
