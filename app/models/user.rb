class User < ApplicationRecord
  enum role: [:admin, :customer]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :presence => true
  validates :user_name, :presence => true
  validates :city, :presence => true
  validates :country, :presence => true
  validates :phone, :presence => true
end
