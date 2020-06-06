# frozen_string_literal: true

require 'contentful'

def contentful
  @contentful ||= Contentful::Client.new(
    access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
    space: ENV['CONTENTFUL_SPACE_ID'],
    dynamic_entries: :auto,
    raise_for_empty_fields: false,
    raise_errors: true
  )
end
