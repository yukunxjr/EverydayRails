require 'rails_helper'

RSpec.describe "Projects", type: :system do
  include LoginSupport
  before do
    driven_by(:rack_test)
  end

  scenario "user creates a new project" do
    user = FactoryBot.create(:user)
    sign_in user
    visit root_path
    expect{
      click_link "New Project"
      fill_in "Name", with: "Test Project"
      fill_in "Description", with: "Trying out Capybara" 
      click_button "Create Project"
      expect(page).to have_content "Project was successfully created."
      expect(page).to have_content "Test Project"
      expect(page).to have_content "Owner: #{user.name}"
    }.to change(user.projects, :count).by(1)
    
  end

  # scenario "guest adds a project" do
  #   visit projects_path
  # save_and_open_page
  #   click_link "New Project"
  # end
end
