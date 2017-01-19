class CpusController < ApplicationController

  before_filter :authenticate_user!

  def index
    @cpus = Cpu.all
  end

  def show
    @cpu = Cpu.find(params[:id])
  end

  def new
    @cpu = Cpu.new
  end

  def create
    @cpu = Cpu.new(cpu_update)
    @cpu.save

    redirect_to @cpu
  end

  def edit
    @cpu = Cpu.find(params[:id])
  end

  def update
    @cpu = Cpu.find(params[:id])
    @cpu.update(cpu_update)
    @cpu.save

    redirect_to @cpu
  end

  def destroy
    @cpu = Cpu.find(params[:id])
    @cpu.destroy

    redirect_to cpus_path
  end



  private

  def cpu_update
    params.require(:cpu).permit(:harddisk, :brand_name, :cpu_processor, :ram, :cd_rom, :usb_port, :vga_card, :cpu_code)
  end

end
