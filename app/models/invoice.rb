class Invoice < ApplicationRecord
  enum status: { pending: 0, paid: 1 }
  enum payment_term: { net_30_days: 0 }

  has_many :line_items, dependent: :destroy
  has_one :sender_address, dependent: :destroy
  has_one :client_address, dependent: :destroy

  accepts_nested_attributes_for :sender_address, allow_destroy: true
  accepts_nested_attributes_for :client_address, allow_destroy: true

  def total
    line_items.map(&:total).inject(0, &:+).to_f
  end
end
