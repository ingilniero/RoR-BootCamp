class Size < ActiveRecord::Base
  has_many :products

  attr_accessible :size

  validates :size, presence: true
end
