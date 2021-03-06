require 'mongo'
require 'sinatra'
require './model.rb'



get '/:db/:collection/' do 
  headers \
    "Content-Type" => "application/json"
  get = params[:captures]  
  body list get[0],get[1]
  
  
end

post '/:db/:collection/'  do
	headers \
	 "Content-Type" => "application/json"
	create params 
	  "Hello World"
end 

get '/:db/:collection/:id/' do 
	headers \
	 "Content-Type" => "application/json"
	get = params[:captures]
	body read get[0],get[1],get[2] 
end 

put '/:db/:collection/:id/' do
	headers \
	 "Content-Type" => "application/json"
	get = params[:captures] 
	body update get[0],get[1],get[2]
	
end 

delete '/:db/:collection/:id/' do
	headers \
	 "Content-Type" => "application/json"
	get = params[:captures]  
	body delete get[0],get[1],get[2]
end 



