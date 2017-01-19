class AddColumnsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_id, :integer ,                :unique => true
    add_column :employees, :description, :text
    add_column :employees, :extension, :integer,                :unique => true
    add_column :employees, :department, :text
  end
end
