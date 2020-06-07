# frozen_string_literal: true

describe RecipesController do
  let(:recipe) { contentful.entries(content_type: 'recipe').first }

  it 'loads recipes page', :vcr do
    get '/recipes'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Marley Spoon Recipes')
  end

  it 'loads recipe page', :vcr do
    get "/recipe/#{recipe.id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include(recipe.title)
  end
end
