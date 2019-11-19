require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    new_text = PigLatinizer.new
    @piglatin = new_text.convert(params[:user_text])
    erb :piglatin
  end

end
