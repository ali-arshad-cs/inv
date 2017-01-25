class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :led
      t.string :cpu
      t.string :keyboard
      t.string :mouse
      t.string :vga_cable
      t.string :vga_card
      t.string :power_cable
      t.string :port_switch
      t.string :headphone
      t.string :cisco_switch
      t.string :usb
      t.string :ip_phone
      t.string :firewall
      t.string :cable_tester
      t.string :ram
      t.string :harddisk
      t.string :mouse_pad
      t.string :laptop
      t.string :cable_cutter

      t.timestamps null: false
    end
  end
end
