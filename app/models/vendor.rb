class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets
  validates :sweet_id, presence: true, uniqueness: true
end
