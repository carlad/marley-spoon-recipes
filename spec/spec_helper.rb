# frozen_string_literal: true

ENV['SINATRA_ENV'] = 'test'

require 'dotenv'
Dotenv.load('.env')

require_relative '../config/environment'
require_relative '../vcr_setup'
require 'rack/test'
require 'webmock/rspec'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include Rack::Test::Methods
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.order = 'random'

  def app
    Rack::Builder.parse_file('config.ru').first
  end
end
