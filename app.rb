# frozen_string_literal: true

require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  get '/' do
    'WOO THIS IS A DATABASE SERVER'
  end

  run! if app_file == $0
end
