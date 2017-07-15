class TodoList < ActiveRecord::Base
  belongs_to :user, dependent: :delete
  has_many :todo_items, dependent: :destroy
  default_scope {order :list_due_date}
end
