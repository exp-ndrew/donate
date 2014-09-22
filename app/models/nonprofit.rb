class Nonprofit < ActiveRecord::Base
  has_many :donations
  validates :name, :presence => true
end


