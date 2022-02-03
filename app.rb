require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do 
  "What's going on?"
end

get '/cat' do
  erb(:index)
end