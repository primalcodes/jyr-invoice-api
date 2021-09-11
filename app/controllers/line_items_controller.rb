class LineItemsController < ApplicationController
  before_action :set_line_item, only: %i[ show update destroy ]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @line_item = LineItem.new(line_item_params)

    if @line_item.save
      render :show, status: :created, location: @line_item
    else
      render json: @line_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    if @line_item.update(line_item_params)
      render :show, status: :ok, location: @line_item
    else
      render json: @line_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:invoice_id, :name, :quantity, :price)
    end
end
