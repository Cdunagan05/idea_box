require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it {is_expected.to validate_presence_of(:name)}
    it {is_expected.to validate_presence_of(:username)}
    it {is_expected.to validate_presence_of(:location)}
    it {is_expected.to validate_uniqueness_of(:username)}
  end

  context "associations" do
    it {should have_many(:ideas)}
  end
end
