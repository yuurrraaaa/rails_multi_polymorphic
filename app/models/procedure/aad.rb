class Aad < ApplicationRecord
  has_one :research, as: :procedure
end
