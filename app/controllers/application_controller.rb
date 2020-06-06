# frozen_string_literal: true

require './config/environment'
require_relative '../models/recipe'

class ApplicationController < Sinatra::Base
  configure do
    set :root, File.dirname(__FILE__)
    set :app_file, __FILE__
    set :public_folder, 'public'
    set :views, 'app/views'
    set :lock, true
    set :sessions, expire_after: 2_592_000 # seconds
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    enable :logging
  end

  get '/' do
    redirect '/recipes'
  end
end
