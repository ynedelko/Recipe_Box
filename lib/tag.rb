class Tag < ActiveRecord::Base
  has_and_belongs_to_many(:recipes)
  validates(:name, :presence => true)
  before_save(:upcase)

  private
  define_method(:upcase) do
    self.name=(name().upcase())
  end
end
