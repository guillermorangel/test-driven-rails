# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User completes todo" do
  it "successfully" do
    sign_in

    click_on "Add new todo"

    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "Buy milk"
  end
end
