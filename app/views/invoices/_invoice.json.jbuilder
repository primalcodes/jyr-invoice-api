json.extract! invoice, :id, :payment_date, :description, :payment_term, :client_name, :client_email, :status, :created_at, :total

json.sender_address do
  json.partial! 'addresses/address', obj: invoice.sender_address
end

json.client_address do
  json.partial! 'addresses/address', obj: invoice.client_address
end

json.line_items do
  json.partial! partial: 'line_items/line_item', collection: invoice.line_items, as: :line_item
end

json.url invoice_url(invoice, format: :json)
