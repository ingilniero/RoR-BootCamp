class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new active: true
    @categories = Category.all
    logger.debug @categories
  end

  def create
    #logger.debug params.inspect
    @product = Product.new params[:product]

    if @product.valid?

      @product.save
      return redirect_to products_path, notice: "Your product #{@product.name} has been created!"

    end

    @categories = Category.all
    return render :new

  end

  def show
    @product =  Product.find params[:id]
  end

  def edit
    @product =  Product.find params[:id]
    @categories = Category.all
  end

  def update
    @product = Product.find params[:id]

    if @product.update_attributes params[:product]
      return redirect_to products_path, notice: "Your product #{@product.name} has been updated!"
    end

    @categories = Category.all
    render :edit
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy

    @products = Product.all
    render :index
  end

end
