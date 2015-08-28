require('spec_helper')

# describe(Recipe) do
#   describe('#ingredients') do
#     it("shows the ingredients for a recipe") do
#       test_recipe = Recipe.create({:name => "chocolate cake", :instruction => "frost"})
#       test_ingredient1 = Ingredient.create({:name => "sugar"})
#       test_ingredient2 = Ingredient.create({:name => "milk"})
#       test_recipe.ingredients.push(test_ingredient1)
#       test_recipe.ingredients.push(test_ingredient2)
#       expect(test_recipe.ingredients()).to(eq([test_ingredient1, test_ingredient2]))
#     end
#   end
#
#
#   describe('#tags') do
#     it("shows the tags for a recipe") do
#       test_recipe = Recipe.create({:name => "carrot cake", :instruction => "whisk"})
#       test_tag1 = Tag.create({:name => "dessert"})
#       test_tag2 = Tag.create({:name => "breakfast"})
#       test_recipe.tags.push(test_tag1)
#       test_recipe.tags.push(test_tag2)
#       expect(test_recipe.tags()).to(eq([test_tag1, test_tag2]))
#     end
#   end
# end


describe(Recipe) do
  it { should have_and_belong_to_many(:tags) }
  it { should have_and_belong_to_many(:ingredients) }

end
