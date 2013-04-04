require 'spec_helper'

feature "UserCreatesNewTodos" do
  scenario "successfully creates a new todo item" do
    visit '/todos'
    click_link "New Todo"
    fill_in "Subject" , with: "rubyonrails"
    fill_in "Priority" , with: "2"
    fill_in "Description" , with: "log in with many providers using OMNISOCIAL"
    click_button "Create Todo"
    page.should have_content "Todo was successfully created."
  end
end
