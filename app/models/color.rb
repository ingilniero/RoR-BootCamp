class Color < ActiveRecord::Base
  has_many :products

  attr_accessible :color

  validates :color, presence: true
end
