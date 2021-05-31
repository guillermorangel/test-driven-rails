# frozen_string_literal: true

require "rails_helper"

RSpec.describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it "return false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end

RSpec.describe Todo, "#completed!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)
    todo.complete!
    todo.reload
    expect(todo).to be_completed
  end
end

RSpec.describe Todo, "#incomplete!" do
  it "update completed_at to nil" do
    todo = Todo.create!(completed_at: Time.current)
    todo.incomplete!
    todo.reload
    expect(todo).not_to be_completed
  end
end
