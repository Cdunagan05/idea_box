require 'rails_helper'

RSpec.describe Image, type: :model do
  context "validations" do
    it {is_expected.to validate_presence_of(:url)}
  end

  context "associations" do
    it {should have_many(:ideas).through(:image_ideas)}
  end
end
