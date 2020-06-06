# frozen_string_literal: true

describe ApplicationController do
  let(:client) { contentful }

  it 'creates a new contentful client' do
    expect(client.instance_of?(Contentful::Client))
  end

  it 'redirects to recipes page' do
    get '/'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_request.url).to eql 'http://example.org/recipes'
  end
end
