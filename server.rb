# coding: utf-8
require 'sinatra'
require_relative 'json2csv'


get '/' do
  @title = 'JSONからCSVへの変換'
  erb :index
end

post '/json2csv' do
  @json = params[:json]
  @csv = Json2Csv.new.json2csv(@json)
  erb :index
end
