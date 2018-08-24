class VendorSweetsController < ApplicationController

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)

    if !@vendor_sweet.valid?
      flash[:errors] = @vendor_sweet.errors.full_messages
    end

    redirect_to @vendor_sweet.vendor
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
  
end
