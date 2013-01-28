class VariantsController < ApplicationController
  def index
     @product = Product.find(params[:product_id])
     @variants = @product.variants

  end

  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.new params[:variant]
    @variant.product_id = params[:product_id]

    if @variant.valid?

      @variant.save

      return redirect_to product_variants_path, notice: "Your variant #{@variant.name} has been created!"
    end
  end

  def show
    @variant = Variant.find params[:id]
  end

  def edit
    @variant = Variant.find params[:id]
  end

  def update
    @variant = Variant.find params[:id]

    if @variant.update_attributes params[:variant]
      return redirect_to product_variants_path, notice: "Your product #{@product.name} has been updated!"
    end

  end

  def destroy
    @variant = Variant.find params[:id]
    @variant.destroy

    @product = Product.find(params[:product_id])
    @variants = @product.variants
    render :index
  end


end
