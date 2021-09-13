class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[show update destroy]

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.all.order(payment_date: :desc)
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show; end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
    # @invoice.sender_address = SenderAddress.new(invoice_params[:sender_address])
    # @invoice.client_address = ClientAddress.new(invoice_params[:client_address])
    if @invoice.save
      render :show, status: :created, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    if @invoice.update(invoice_params)
      render :show, status: :ok, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def invoice_params
    params.require(:invoice).permit(
      :payment_date,
      :description,
      :payment_term,
      :client_name,
      :client_email,
      :status,
      sender_address_attributes: %i[id street city post_code country],
      client_address_attributes: %i[id street city post_code country],
      line_items_attributes: %i[id invoice_id quantity price]
    )
  end
end
