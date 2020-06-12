# frozen_string_literal: true

describe 'recipes/index.erb' do
  let(:recipes) { contentful.entries(content_type: 'recipe') }

  it 'displays all the recipes', :vcr do
    get '/recipes'
    expect(last_response.body).to include(recipes.first.title)
    expect(last_response.body).to include(recipes.first.photo.url)
    expect(last_response.body).to include(recipes.last.title)
    expect(last_response.body).to include(recipes.last.photo.url)
  end
end
