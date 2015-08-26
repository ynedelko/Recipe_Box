require('spec_helper')

describe(Ingredient) do
  describe('#recipes') do
    it("shows the recipes that include that ingredient") do
      test_ingredient = Ingredient.create({:name => "cumin"})
      test_recipe1 = Recipe.create({:name => "curry"})
      test_recipe2 = Recipe.create({:name => "thai rice"})
      test_ingredient.recipes.push(test_recipe1)
      test_ingredient.recipes.push(test_recipe2)
      expect(test_ingredient.recipes()).to(eq([test_recipe1, test_recipe2]))
    end
  end
end
