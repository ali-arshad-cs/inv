class AddColumnToCpu < ActiveRecord::Migration
  def change
    add_column :cpus, :cpu_code, :integer,                :unique => true
  end
end
