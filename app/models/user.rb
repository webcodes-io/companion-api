class User < ApplicationRecord
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :userName, presence: true
  validates :email, presence: true
end
