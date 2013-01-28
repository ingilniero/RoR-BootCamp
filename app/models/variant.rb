class Variant < ActiveRecord::Base
  belongs_to :product

  attr_accessible :id, :name, :value, :product_id
end
