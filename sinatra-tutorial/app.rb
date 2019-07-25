# app.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
"<h1>aaa</h1>"
end

get '/hello' do
#"<h1>aaaa<h1>"
@name = "kinjo"
erb :hello
end

get '/user/:name' do
html = "<h1>#{params[:name]}!</h1>"
end

get '/your_name/:last_name/:first_name?' do
    "<h1>Hello #{params[:last_name]} #{params[:first_name]}!</h1>"
end



get '/hello/:id' do
  html = "<h1>Hello #{params[:name]}!</h1>"
  html += "<h1>あなたのIDは #{params[:id]} です!</h1>"
  return html
end

