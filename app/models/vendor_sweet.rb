class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :comment, presence: true
  validates_uniqueness_of :sweet_id, scope: :vendor_id
end
