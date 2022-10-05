class AadDatum < ApplicationRecord
  has_one :vector_datum, as: :data
end
