# frozen_string_literal: true

describe 'recipes/index.erb' do
  let(:recipes) do
    VCR.use_cassette('recipes') { contentful.entries(content_type: 'recipe') }
  end

  it 'displays all the recipes' do
    get '/recipes'
    expect(last_response.body).to include(recipes.first.title.to_s)
    expect(last_response.body).to include(recipes.first.photo.url.to_s)
    expect(last_response.body).to include(recipes.last.title.to_s)
    expect(last_response.body).to include(recipes.last.photo.url.to_s)
  end
end
