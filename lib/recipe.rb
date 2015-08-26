class Recipe < ActiveRecord::Base
  has_and_belongs_to_many(:tags)
  has_and_belongs_to_many(:ingredients)
  validates(:name, :presence => true)
  before_save(:capitalize)

  private
  define_method(:capitalize) do
    self.name=(name().capitalize())
    # self.instruction=(instruction().downcase())
  end
end
