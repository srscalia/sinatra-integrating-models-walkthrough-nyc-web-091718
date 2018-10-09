require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require 'pry'

class App < Sinatra::Base
# which renders the index.erb page
  get '/' do
    erb :index
  end
  #which receives the form data through params and renders the results page.
  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
