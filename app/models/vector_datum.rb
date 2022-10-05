class VectorDatum < ApplicationRecord
  belongs_to :research
  belongs_to :data, polymorphic: true
  accepts_nested_attributes_for :data

  def data_attributes=(data_attributes)
    self.data = data_type.constantize.new(data_attributes)
  end
end
