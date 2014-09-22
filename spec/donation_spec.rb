describe Donation do
  it { should belong_to :nonprofit }
  it { should validate_presence_of :amount }
  it { should validate_numericality_of :amount }
end
