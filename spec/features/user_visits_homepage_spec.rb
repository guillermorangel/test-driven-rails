# frozen_string_literal: true

require "rails_helper"

RSpec.describe "User visits homepage" do
  it "successfully" do
    visit root_path

    expect(page).to have_css "h1", text: "Todos"
  end
end
