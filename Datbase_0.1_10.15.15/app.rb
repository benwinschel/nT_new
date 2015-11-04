require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'faker'
require './models/User'
require './models/Tweet'
require './models/Relation'



get '/users' do
  (0..100).each do |t|
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
  end
  @models = User.all
  erb :users
end

get '/' do
  @tweets = Tweet.first(50)
  erb :index
end

get '/login/:user' do
  @u = User.where(name: params[:user]).first
  @u.update(logged_in: true)
  erb :success
end

get '/logout' do
  @u = User.where(logged_in: true).first.update(logged_in: false)
  erb :success
end
