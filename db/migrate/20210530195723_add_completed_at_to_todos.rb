# frozen_string_literal: true

class AddCompletedAtToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :completed_at, :timestamp
  end
end
