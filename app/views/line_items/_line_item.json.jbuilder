json.extract! line_item, :id, :name, :quantity, :price, :total
json.url line_item_url(line_item, format: :json)
