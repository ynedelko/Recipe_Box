require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

#homepage, show all tags
get('/') do
  @tags = Tag.all()
  erb(:index)
end

#adding new categories to homepage
post('/tags') do
  name = params.fetch("name")
  tag = Tag.new({:name => name, :id => nil})
  tag.save()
  @tags = Tag.all()
  erb(:index)
end

#going to a particular tag/category
get('/tags/:id') do
  @tag = Tag.find(params.fetch("id").to_i())
  erb(:tag_detail)
end

#deleting a particular tag/category and going back to the homepage
delete('/tags/:id/delete') do
  id = params.fetch("id").to_i()
  @tag = Tag.find(id)
  @tag.destroy()
  redirect("/")
end

#editing a particular tag/category and going back to the same tag detail page
patch('/tags/:id') do
  new_name = params.fetch("name")
  id = params.fetch("id").to_i()
  @tag = Tag.find(id)
  @tag.update({:name => new_name})
  erb(:tag_detail)
end

#displays list of recipes for a category
get('/tags/:id') do
  @tag = Tag.find(params.fetch("id").to_i())
  @recipe = Recipe.all()
  erb(:tag_detail)
end

#behind the scenes
#retreives information from form, stores in db, adds new recipe
post('/tags/:id/new') do
  name = params.fetch("name")
  tag_id = params.fetch("id").to_i()
  tag = Tag.find(tag_id)
  new_recipe = Recipe.create({:name => name})
  tag.recipes.push(new_recipe)
  redirect back
end

#going to a specific recipe
get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @ingredients = Ingredient.all()
  # tags = @recipe.tags()
  # tags.each() do tag
  # @tag =
  erb(:recipe_detail)
end

#retreives information from form, stores in db, adds ingrdients to a specific recipe
post('/recipes/:id/new') do
  new_ingredient_name = params.fetch("name")
  recipe_id = params.fetch("id").to_i()
  recipe = Recipe.find(recipe_id)
  #we are going to find the recipe based on the id which we previously fetched from the url
  new_ingredient = Ingredient.find_or_create_by({:name => new_ingredient_name})

  if recipe.ingredients().find_by({:name => new_ingredient_name})
    # do nothing
  else
    recipe.ingredients.push(new_ingredient)
  end

# is the same thing as:
  # unless @recipe.ingredients().find_by({:name => new_ingredient_name})
#   recipe.ingredients.push(new_ingredient)
# end
  redirect("/recipe/#{recipe_id}")
end

#displays list of recipes for an ingredient
get('/ingredient/:id') do
  @ingredient = Ingredient.find(params.fetch("id").to_i())
  @recipes = Recipe.all()
  erb(:ingredient_detail)
end

#shows all ingredients
get('/ingredients/all') do
  @ingredients = Ingredient.all()
  erb(:ingredients_all)
end

# take info from the form and update a recipe
patch('/recipes/:id') do
  new_name = params.fetch("name")
  id = params.fetch("id").to_i()
  @recipe = Recipe.find(id)
  @recipe.update({:name => new_name})
  erb(:recipe_detail)
end

#deleting a particular recipe and going back to the homepage
delete('/recipes/:id/delete') do
  id = params.fetch("id").to_i()
  @recipe = Recipe.find(id)
  @recipe.destroy()
  redirect("/")

  # this is that the delete looked like: delete('/tags/:tag_id/recipes/:id/delete') do
  # this is what the form action looked like:<form action='/tags/<%= @recipe.tags.first.id() %>/recipes/<%= @recipe.id() %>/delete' method='post'>
  # it had this code inside:   tag_id = params.fetch("tag_id").to_i()
  # redirect("/tags/#{tag_id}")
end
