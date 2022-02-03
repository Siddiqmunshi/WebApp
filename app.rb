require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do 
  "What's going on?"
end

get '/random-cat' do
  @random_names = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @random_names = params[:name]
  erb(:index)
end