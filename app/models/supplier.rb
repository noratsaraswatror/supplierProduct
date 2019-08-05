class Supplier < ApplicationRecord
  has_many :deals
  has_many :products, through: :deals
end
