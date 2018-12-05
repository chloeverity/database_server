# frozen_string_literal: true

require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :port, 4000
  get '/' do
    erb :index
  end

  get '/set' do
    parameters = request.query_string.split('=')
    session[:key] = parameters[0]
    session[:value] = parameters[1]
  end

  get '/get' do
    session[:value]
  end
  run! if app_file == $PROGRAM_NAME
end
