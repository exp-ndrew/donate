class Donation < ActiveRecord::Base
  belongs_to :nonprofit
  validates :amount, :presence => true
  validates :amount, :numericality => true
  before_create :define_name

private
  def define_name
    self.from = "Anonymous" unless self.from?
  end

end
