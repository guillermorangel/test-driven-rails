# frozen_string_literal: true

class Todo < ApplicationRecord
  def completed?
    completed_at?
  end
end
