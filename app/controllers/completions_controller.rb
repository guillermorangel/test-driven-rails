class CompletionsController < ApplicationController
  def create
    # set timestamp and persist the record with touch
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end
end
