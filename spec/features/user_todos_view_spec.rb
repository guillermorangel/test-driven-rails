# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User views own todos" do
  it "unable to view other todos" do
    Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to display_todo "Buy milk"
  end
end
