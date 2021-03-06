class EmployeesController < ApplicationController
  before_action :authenticate_admin!
    def index
      @q = Employee.ransack(params[:q])
      @employees = @q.result
    end
    
    def show
      @employee = Employee.find(params[:id])
    end

    def new
      @employee = Employee.new
      @locations = Location.all
      @jobs = Job.all
    end

    def create
      @employee = Employee.new(employee_params)
    
      if @employee.save
        redirect_to @employee
      else
        render :new
      end
    end
    
  private
    def employee_params
      params.require(:employee).permit(:name, :lastName, :location_id, :job_id)
    end
end
