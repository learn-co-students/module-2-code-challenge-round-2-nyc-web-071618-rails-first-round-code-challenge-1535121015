class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates includes: :sweet
  validates comment: 
end
