# frozen_string_literal: true

require 'vcr'
require 'rspec'
require 'webmock'

VCR.configure do |config|
  config.cassette_library_dir = 'fixtures/vcr_cassettes'
  config.hook_into :webmock
  # config.debug_logger = $stderr # use if debugging reqired
end
