class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :componet, :string
    add_column :courses, :name_course, :string
  end
end
