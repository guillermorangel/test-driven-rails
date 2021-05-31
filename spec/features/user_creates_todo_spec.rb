# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User creates todo" do
  it "successfully" do
    sign_in
    visit root_path
    create_todo "Buy milk"

    expect(page).to display_todo "Buy milk"
  end
end
