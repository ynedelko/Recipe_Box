class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many(:recipes)
  validates(:name, :presence => true)
  before_save(:downcase)

  private
  define_method(:downcase) do
    self.name=(name().downcase())
  end
end
