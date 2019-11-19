require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    new_text = PigLatinizer.new
    @piglatin = new_text.piglatinize(params[:user_phrase])
    erb :piglatin
  end

end
