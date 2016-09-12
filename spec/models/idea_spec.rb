require 'rails_helper'

RSpec.describe Idea, type: :model do
  context "validations" do
    it {is_expected.to validate_presence_of(:idea_text)}
  end

  context "associations" do
    it {should have_many(:images).through(:image_ideas)}
    it {should belong_to(:user)}
    it {should belong_to(:category)}
  end
end
