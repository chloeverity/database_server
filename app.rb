# frozen_string_literal: true

require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :port, 4000
  get '/' do
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
