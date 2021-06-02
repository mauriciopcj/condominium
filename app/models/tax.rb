class Tax < ApplicationRecord
  belongs_to :apartment
  has_many :expense

  accepts_nested_attributes_for :expense, reject_if: :all_blank, allow_destroy: true
end
