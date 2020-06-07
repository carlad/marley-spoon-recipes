# frozen_string_literal: true

describe RecipesController do
  before do
    let(:recipe) do
      VCR.use_cassette('recipe') { contentful.entries(content_type: 'recipe').first }
    end

    it 'loads recipes page' do
      get '/recipes'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include('Marley Spoon Recipes')
    end

    it 'loads recipe page' do
      get "/recipe/#{recipe.id}"
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include(recipe.title)
    end
  end
end
