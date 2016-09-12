require 'rails_helper'

RSpec.feature "User creates an account" do
  scenario "they see the page of their account" do
    visit new_user_path

    fill_in "Name", with: "Chase"
    fill_in "Username", with: "cdun"
    fill_in "Location", with: "Texas"
    fill_in "Password", with: "bevo"

    click_on "Create Account"

    expect(page).to have_content "Welcome cdun!!"
  end
end
