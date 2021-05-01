class TodosController < ApplicationController
  def index
  end

  def create
    redirect_to todos_path
  end

  def new
    @todo = Todo.new
  end
end
