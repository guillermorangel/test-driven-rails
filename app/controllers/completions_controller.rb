# frozen_string_literal: true

class CompletionsController < ApplicationController
  def create
    # set timestamp and persist the record with touch
    current_user.todos.find(params[:todo_id]).update(completed_at: Time.current)
    redirect_to todos_path
  end
end
