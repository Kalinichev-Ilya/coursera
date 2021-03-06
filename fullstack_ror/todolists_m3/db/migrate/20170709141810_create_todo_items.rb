class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :title
      t.boolean :completed
      t.text :description

      t.timestamps null: false
    end
  end
end
