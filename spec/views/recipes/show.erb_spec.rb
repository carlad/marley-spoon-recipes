# frozen_string_literal: true

describe 'recipes/show.erb' do
  before do
    let(:contentful_recipe) do
      VCR.use_cassette('recipe') { contentful.entries(content_type: 'recipe').first }
    end

    let(:recipe_id) { contentful_recipe.id }
    let(:recipe) { Recipe.new(contentful_recipe) }

    it 'displays details of a recipe' do
      get "/recipe/#{recipe_id}"
      expect(last_response.body).to include(recipe.title.to_s)
      expect(last_response.body).to include(recipe.url.to_s)
      expect(last_response.body).to include(recipe.chef.to_s)
      expect(last_response.body).to include(recipe.description.to_s)
      expect(last_response.body).to include(recipe.tags.first.name.to_s)
    end
  end
end
