require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    output = ''
    params[:number].to_i.times { output += params[:phrase] }
    output
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{word2} #{word3} #{word4} #{word5}."
  end

end