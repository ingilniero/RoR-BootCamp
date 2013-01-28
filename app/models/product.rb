class Product < ActiveRecord::Base
  before_save :set_defaults

  belongs_to :category

  has_many :variants

  attr_accessible :active, :description, :name, :price, :category_id, :color_id, :size_id

  validates :name, :category_id, presence: true
  validates :price , :numericality => { :greater_than => 0}

  def set_defaults
    self.active ||= false
  end

end
