class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @sweets = @vendor.sweets
  end

  def update
    vendor = Vendor.find(params[:id])
    vendor.update(comment: params[:vendor][:comment])
    vendor_id = params[:id].to_i
    sweet_id = params[:vendor][:id].to_i
    VendorSweet.create(vendor_id: vendor_id, sweet_id: sweet_id)
  end
end
