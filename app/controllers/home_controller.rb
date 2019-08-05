class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def import
    myfile = params[:file]
    Deal.destroy_all
    pets_by_owner = SmarterCSV.process(myfile.path,{:key_mapping => {:full_name  => :full_name, :Email => :email,:phone=>:phone}})
    pets_by_owner.each  do |chunk|
      if !chunk.blank?
        category = chunk[:category] 
        @category = Category.find_or_create_by(name: category)
        supplier = {id:chunk[:supplier_id],name:chunk[:supplier_name]}
        @supplier = Supplier.find_or_create_by(id:chunk[:supplier_id])
        @supplier.update(name:chunk[:supplier_name])
        product = {category_id: @category.id,price: chunk[:price],title:chunk[:product_title]}
        deal = {supplier_id:chunk[:supplier_id],product_id: chunk[:product_id],is_active: chunk[:is_active]}
   #     byebug
        @product = Product.find_by(id: chunk[:product_id])
        if @product.blank?
          product.merge!({id: chunk[:product_id]})
          @product = Product.create(product)
          puts @product.to_json
        else
          @product.update(product)
          puts @product.to_json
        end
        
        @deal = Deal.create(deal)
        puts @deal.to_json
       # @product.update(product)
       # puts @product.to_json
      end
      
    end
    redirect_to root_path
  end
  protected 

end
