class Apartment < ApplicationRecord
  has_many :user

  paginates_per 10
end
