# frozen_string_literal: true

require 'dotenv/load'
require_relative './config/environment'
require 'rack/protection'

use Rack::Session::Pool, expire_after: 2_592_000 # seconds
use Rack::Protection::RemoteToken
use Rack::Protection::SessionHijacking

use RecipesController
run ApplicationController
