# frozen_string_literal: true

describe 'recipes/show.erb' do
  let(:contentful_recipe) { contentful.entries(content_type: 'recipe').first }

  let(:recipe_id) { contentful_recipe.id }
  let(:recipe) { Recipe.new(contentful_recipe) }

  it 'displays details of a recipe', :vcr do
    get "/recipe/#{recipe_id}"
    expect(last_response.body).to include(recipe.title)
    expect(last_response.body).to include(recipe.url)
    expect(last_response.body).to include(recipe.chef)
    expect(last_response.body).to include(recipe.description)
    expect(last_response.body).to include(recipe.tags.first.name)
  end
end
