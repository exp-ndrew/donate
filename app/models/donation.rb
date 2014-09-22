require 'rails_helper'

class Donation < ActiveRecord::Base
  belongs_to :nonprofit
  validates :amount, :presence => true
  validates :amount, :numericality => true
end
