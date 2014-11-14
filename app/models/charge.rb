class Charge < ActiveRecord::Base
  belongs_to :chargeable, :polymorphic => true

  before_create :set_unique_code

  scope :failed, -> { where(paid: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }
  scope :successful, -> { where(paid: true, refunded: false) }

  def find_chargeable
    self.chargeable_type.constantize.find(self.chargeable_id)
  end

  def status
  	(paid && !refunded) ? "Successful" : ( (paid && refunded) ? "Disputed" : "Failed" )
  end

  private

  def set_unique_code
  	charnum = [('a'..'z'), ('A'..'Z'), (0..9)].map { |i| i.to_a }.flatten
  	self.unique_code = (0...15).map { charnum[rand(charnum.length)] }.join
  end
end
