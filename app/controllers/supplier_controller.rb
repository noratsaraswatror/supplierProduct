class SupplierController < ApplicationController
  def supplier_product_list
    @supplier = Supplier.find_by_id(params[:supplier_id])
    @is_active = params[:is_active]
    if @is_active == "true"
      puts  @products = @supplier.deals.where(is_active: true)
    else
      puts  @products = @supplier.deals
    end
  end
end
