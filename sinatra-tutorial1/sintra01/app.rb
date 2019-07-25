require 'sinatra'
require 'sinatra/reloader'
get '/form' do
    erb :form
  end
  
post '/form_output' do
  @name = params[:name]
  @email = params[:email]
  @content = params[:content]

  erb :form_output
end

get '/upload' do
  @images = Dir.glob("./public/images/*").map{|path| path.split('/').last }
  erb :upload
end

post '/upload' do
  @filename = params[:file][:filename]
  tmp = params[:file][:tempfile]

  FileUtils.mv(tmp, "./public/images/#{@filename}")

  erb :upload_output
end

$users = {
  "kinjo" => "kinjopass",
  "higa" => "higapass",
  "sabo" => "sabopass"
}

get '/login' do
  erb :login
end

post '/login' do
  @name = params[:name]
  @password = params[:password]

  if $users[@name] == @password
    cookies[:name] = @name
    return erb :mypage
  end

  return erb :login
end

get '/mypage' do
  erb :mypage
end