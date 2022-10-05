class Research < ApplicationRecord
  belongs_to :procedure, polymorphic: true
  accepts_nested_attributes_for :procedure
  has_many :vector_data
  accepts_nested_attributes_for :vector_data

  def procedure_attributes=(procedure_attributes)
    self.procedure = procedure_type.constantize.new(procedure_attributes)
  end
end
