class EmployeesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @employees = Employee.all.order('employee_id ASC')
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
      else
        respond_with(@employee)
      end
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end



  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to employees_path
  end





  private

  def employee_params
    params.require(:employee).permit(:name, :keyboard, :led, :cpu_code, :mouse_pad,:mouse, :ip_phone, :headphone, :vga_card, :laptop, :camera, :employee_id, :description, :extension, :department)
  end


end