class Product < ApplicationRecord
  has_many :deals
  has_many :suppliers, through: :deals 
  scope :active, ->  { where(is_active: true) }
  scope :inactive, -> { where(is_active: false) }
end
