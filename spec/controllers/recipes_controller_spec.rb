# frozen_string_literal: true

describe RecipesController do
  let(:recipe) { contentful.entries(content_type: 'recipe').first }
  let(:recipe_id) { recipe.id }
  let(:recipe_title) { recipe.title }

  it 'loads recipes page' do
    get '/recipes'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Marley Spoon Recipes')
  end

  it 'loads recipe page' do
    get "/recipes/#{recipe_id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include(recipe_title)
  end
end
