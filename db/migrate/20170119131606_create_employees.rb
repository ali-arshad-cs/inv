class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text  :mouse
      t.text :keyboard
      t.string :led
      t.string :cpu_code
      t.text :mouse_pad
      t.text :ip_phone
      t.text :headphone
      t.string :vga_card
      t.text :laptop
      t.string :camera

      t.timestamps null: false
    end
  end
end
