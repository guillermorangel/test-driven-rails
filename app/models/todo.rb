# frozen_string_literal: true

class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def complete!
    update completed_at: Time.current
  end

  def incomplete!
    update completed_at: nil
  end
end
