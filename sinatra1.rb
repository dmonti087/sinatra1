require 'sinatra'  

enable :sessions

get '/' do
  "Hello, World!"
end

get '/getdoc' do
    "<!DOCTYPE html>
    <p style='color:red;'>This is a test</p>
    </html>"
end

get '/post_it' do
    erb :post_it
end

post "/submitted" do
    "<h1>Form Submitted</h1>"
end

get "/logon" do
    erb :logon
end

post "/logon" do
    if params[:username] == "bob" and params[:pwd] == "pass"
        "SUCCESS"
    else "FAILURE"
    end
end

get "/name" do
    erb :name
end

post "/hello" do
    session[:message] = "Hello, #{params[:name]}"
    "Saved the name"
end

get "/greet" do
    session[:message]
end
 
 get "/howmany" do
     erb :howmany
end 

post "/candles" do
   @x = params[:candlevalue]
   erb :candles
end




