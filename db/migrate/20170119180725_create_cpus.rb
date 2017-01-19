class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|

      t.string :harddisk
      t.string :brand_name
      t.string :cpu_processor
      t.string :ram
      t.string :cd_rom
      t.string :usb_port
      t.string :vga_card

      t.timestamps null: false
    end
  end
end