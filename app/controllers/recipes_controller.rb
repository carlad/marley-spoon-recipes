# frozen_string_literal: true

require_relative '../models/recipe.rb'

class RecipesController < ApplicationController
  recipes = contentful.entries(content_type: 'recipe')
  # index route for all recipes
  get '/recipes' do
    erb :'recipes/index', locals: { recipes: recipes }
  end

  # show route for one recipe
  get '/recipes/:id' do
    recipe = Recipe.new(contentful.entry(params[:id]))
    erb :'/recipes/show', locals: { recipe: recipe }
  end
end
