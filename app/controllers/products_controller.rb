require 'scraper'

class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.includes(:pages).all.order('pages.price asc')
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.pages.build
  end

  # GET /products/1/edit
  def edit
    @product.pages.build
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save

        @product.pages.each do |page|
          Scraper.save!(page)
        end

        format.html { redirect_to @product, notice: "Product was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update

    respond_to do |format|
      if @product.update(product_params)

        @product.pages.each do |page|
          Scraper.save!(page)
        end

        format.html { redirect_to @product, notice: "Product was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.includes(pages: [:shop]).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :image_url, pages_attributes: [:id, :url, :_destroy])
    end
end
