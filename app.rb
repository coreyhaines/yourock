require 'sinatra'

get '/' do
  "You can use yourock by appending someone's name to the URL and sending the link. For example: <a href='#{request.url}sarah'>#{request.url}sarah</a>"
end

get '/:name' do
  "Hello, #{params[:name]}! YOU ROCK!"
end
