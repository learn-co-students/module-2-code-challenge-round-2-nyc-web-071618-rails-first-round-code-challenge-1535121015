class VendorSweetsController < ApplicationController
  def new
    @vendorsweet = VendorSweets.new()
  end

  def create
    byebug
    @vendorsweet = VendorSweet.create(vendorsweet_params)
  end

  private

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end
