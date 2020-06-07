# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler'
require 'rdiscount'
require 'sysrandom/securerandom'

Bundler.require(:default, ENV['SINATRA_ENV'])

require './app/controllers/application_controller'
require './app/helpers/application_helper'
require_all 'app'
