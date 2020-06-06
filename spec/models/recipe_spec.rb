# frozen_string_literal: true

RSpec.describe Recipe, type: :model do
  let(:contentful_recipe) { contentful.entries(content_type: 'recipe').first }
  let(:recipe_id) { contentful_recipe.id }
  let(:recipe) { Recipe.new(contentful_recipe) }

  it 'has all fields' do
    expect(recipe.title).to eql('White Cheddar Grilled Cheese with Cherry Preserves & Basil')
    expect(recipe.url).to eql('//images.ctfassets.net/kk2bw5ojx476/61XHcqOBFYAYCGsKugoMYK/0009ec560684b37f7f7abadd66680179/SKU1240_hero-374f8cece3c71f5fcdc939039e00fb96.jpg')
    expect(recipe.description).to include('*Grilled Cheese 101*: Use delicious cheese and good quality bread; make crunchy on the outside and ooey gooey on the inside;')
    expect(recipe.chef).to eql('Anonymous')
    expect(recipe.tags.first.name).to eql('vegan')
  end
end
