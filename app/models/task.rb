class Task < ApplicationRecord
  belongs_to :auctions, optional: true
end
