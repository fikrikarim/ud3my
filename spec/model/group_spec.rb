require 'rails_helper'

RSpec.describe Group, type: :model do
  it "Group is valid with all parameters" do
    expect(create(:group)).to be_valid
  end

end