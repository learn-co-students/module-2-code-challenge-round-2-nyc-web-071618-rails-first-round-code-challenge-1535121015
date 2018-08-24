class VendorsController < ApplicationController
  before_action(:find_vendor, only: [:show, :create])
  def index
    @vendors = Vendor.all
  end

  def show
    @vendorsweet = VendorSweet.create
  end

  def create
    # @vendorsweet = VendorSweet.create(vendor_params)
    # if @vendorsweet.save
    #   redirect_to vendor_path(@vendor)
    # else
    #   render :show
    # end
  end

  private

  # def vendor_params
  #   params.require(:vendor_sweet).permit(:sweet_id, :comment)
  # end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

end