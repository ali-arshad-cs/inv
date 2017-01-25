class EquipmentController < ApplicationController

  before_filter :authenticate_user!

  def index
    @equipments = Equipment.all
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save

    redirect_to @equipment
  end

  def new
    @equipment = Equipment.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end


  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to equipment_path
    else
      render 'edit'
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    redirect_to equipment_index_path
  end

  private

  def equipment_params
    params.require(:equipment).permit(:led, :cpu, :keyboard, :mouse, :vga_cable, :vga_card, :power_cable, :port_switch, :headphone, :cisco_switch, :usb, :ip_phone, :firewall, :cable_tester, :ram, :harddisk, :mouse_pad, :laptop, :cable_cutter)
  end
end
