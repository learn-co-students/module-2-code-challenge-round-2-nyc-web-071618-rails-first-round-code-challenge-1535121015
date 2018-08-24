Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

VendorSweet.create(vendor_id: 1, sweet_id: 1)
VendorSweet.create(vendor_id: 1, sweet_id: 2)
VendorSweet.create(vendor_id: 2, sweet_id: 1)
VendorSweet.create(vendor_id: 3, sweet_id: 1)
