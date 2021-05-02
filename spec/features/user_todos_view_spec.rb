require 'rails_helper'

feature "User views own todos" do
  scenario "unable to view other todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
