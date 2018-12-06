# frozen_string_literal: true

require 'sinatra/base'
require_relative 'stored_data.rb'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  get '/' do
    erb :index
  end

  get '/set' do
    parameters = request.query_string.split('=')
    StoredData.set_data(parameters[0], parameters[1])
  end

  get '/get' do
    parameters = request.query_string.split('=')
    StoredData.get_data(parameters[1])
  end
  run! if app_file == $PROGRAM_NAME
end
