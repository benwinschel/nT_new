require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'faker'
require './models/User'
require './models/Tweet'
require './models/Relation'
(0..100).each do |t|
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end


get '/users' do
  @models = User.all
  erb :users
end
