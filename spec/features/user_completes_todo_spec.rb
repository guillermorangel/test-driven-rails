# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User completes todo" do
  it "successfully" do
    sign_in
    create_todo "Buy milk"
    click_on "Mark complete"

    expect(page).to display_completed_todo "Buy milk"
  end
end
