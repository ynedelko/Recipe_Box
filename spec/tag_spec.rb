require('spec_helper')

# describe(Tag) do
#   describe('#recipes') do
#     it('shows the recipes under that tag') do
#       test_tag = Tag.create({:name => "breakfast"})

      # creating and making connection at once
      # test_recipe1 = test_tag.recipes().create({:name => "recipe1", :instruction => "whisk"})
      # test_recipe2 = test_tag.recipes().create({:name => "recipe2", :instruction => "whisk"})

      # creating and then making connection
      # this is the one we ended up using:
      # test_recipe1 = Recipe.create({:name => "recipe1", :instruction => "whisk"})
      # test_recipe2 = Recipe.create({:name => "recipe2", :instruction => "whisk"})
      # test_tag.recipes.push(test_recipe1)
      # test_tag.recipes.push(test_recipe2)

      # another way of creating and then making connection
      # test_recipe1 = Recipe.create({:name => "recipe1", :instruction => "whisk"})
      # test_recipe2 = Recipe.create({:name => "recipe2", :instruction => "whisk"})
      # test_tag.update(:recipe_ids => [test_recipe1.id(), test_recipe2.id()])

#       expect(test_tag.recipes()).to(eq([test_recipe1, test_recipe2]))
#     end
#   end
# end

describe(Tag) do
  it { should have_and_belong_to_many(:recipes) }
end
