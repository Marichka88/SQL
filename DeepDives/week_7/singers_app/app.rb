require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  "<h1>Song List</h1>
  <ul>
    <li><a href=\"/kick\">I Get A Kick Out Of You</a></li>
    <li><a href=\"/fly\">Come Fly with Me</a></li>
  </ul>"
end

get "/fly" do 
  "<a href=\"/\">Index</a>
  <h1>Come Fly with Me</h1>
  <p>Come fly with me, we'll fly, we'll fly away</p>
  <p>If you can use some exotic booze</p>
  <p>There's a bar in far Bombay</p>
  <p>Come on fly with me, we'll fly, we'll fly away</p>"
end

require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  erb :index
end

get "/fly" do 
  erb :fly
end

get '/kick' do
  erb :kick
end