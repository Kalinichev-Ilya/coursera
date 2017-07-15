class TodoItemsController < ApplicationController
  before_action :set_todo_item, only: %i[show edit update destroy]
  
  def index
    @todo_items = TodoItem.all
    @number_of_completed_todos = TodoItem.completed_count
  end

  def show; end

  def new
    @todo_item = TodoItem.new
  end

  def edit; end

  def create
    @todo_item = TodoItem.new(todo_item_params)
    
    respond_to do |format|
      if @todo_item.save
        format.html { redirect_to todo_items_path, notice: 'Todo item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @todo_item.update(todo_item_params)
        format.html { redirect_to @todo_item, notice: 'Todo item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @todo_item.destroy
    respond_to do |format|
      format.html { redirect_to todo_items_url, notice: 'Todo item was successfully destroyed.' }
    end
  end
  
  private

  def set_todo_item
    @todo_item = TodoItem.find(params[:id])
  end

  def todo_item_params
    params.require(:todo_item).permit(:due_date, :title, :completed, :description)
  end
end
