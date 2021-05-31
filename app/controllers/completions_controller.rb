# frozen_string_literal: true

class CompletionsController < ApplicationController
  def create
    # set timestamp and persist the record with touch
    todo.update(completed_at: Time.current)
    redirect_to todos_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end
