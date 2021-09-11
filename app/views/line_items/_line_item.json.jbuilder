json.extract! line_item, :id, :invoice_id, :name, :quantity, :price, :total
json.url invoice_line_item_url(line_item.invoice, line_item, format: :json)
