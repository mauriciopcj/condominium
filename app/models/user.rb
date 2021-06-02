class User < ApplicationRecord
  belongs_to :apartment

  paginates_per 10
end
