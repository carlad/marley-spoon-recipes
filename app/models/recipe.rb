# frozen_string_literal: true

class Recipe
  attr_reader :recipe

  def initialize(recipe)
    @recipe = recipe
  end

  def title
    recipe.title ? recipe.title : 'Untitled'
  end

  def chef
    recipe.chef ? recipe.chef.name : 'Anonymous'
  end

  def description
    recipe.description ? recipe.description : 'No description.'
  end

  def url
    recipe.photo ? recipe.photo.url : 'https://marleyspoon.de/images/ms/home/mobile/03_Homepage_Box-DE@2x-6e80fba666.jpg'
  end

  def tags
    recipe.tags ? recipe.tags : ''
  end
end
