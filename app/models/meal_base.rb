class MealBase < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :meals, reading: :meals_replica }
end
