class DessertBase < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :desserts, reading: :desserts_replica }
end
