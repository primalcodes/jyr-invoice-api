class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :invoice, null: false, foreign_key: true
      t.string :type
      t.string :street
      t.string :city
      t.string :state
      t.string :post_code
      t.string :country

      t.timestamps
    end
  end
end
