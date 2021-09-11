class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.date :payment_date
      t.string :description
      t.integer :payment_term, null: false, default: 0
      t.string :client_name
      t.string :client_email
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
