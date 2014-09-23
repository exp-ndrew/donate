class Donation < ActiveRecord::Base
  belongs_to :nonprofit
  validates :amount, :presence => true
  validates :amount, :numericality => true
  before_create :define_name
  # validate :card_validation

  def amount_format
    @counter = 6
    amount = sprintf('%.2f', self.amount)
    amount.to_s.reverse!.split('')
    (((amount.length - 4) / 3).floor).times do
      amount.insert(@counter, ',')
      @counter += 4
    end
    amount.reverse!
  end




private
  def define_name
    self.from = "Anonymous" unless self.from?
  end

end
