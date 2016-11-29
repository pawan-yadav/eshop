class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :product, :user, :quantity, :presence => true

  before_save :update_total

  def update_total
  	self.total = self.quantity.to_i * self.try(:product).try(:price).to_i
  end
end
