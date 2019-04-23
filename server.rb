# coding: utf-8
require 'sinatra'
require "json"


get '/' do
  @title = 'JSONからCSVへの変換'
  erb :index
end
