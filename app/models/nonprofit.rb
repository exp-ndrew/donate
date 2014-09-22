class Nonprofit < ActiveRecord::Base
  has_many :donations
  validates :name, :presence => true
  accepts_nested_attributes_for :donations
end


