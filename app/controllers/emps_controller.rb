class EmpsController < ApplicationController
  def search
    @emps = Emp.search(params[:skills], params[:city])
    #@emps=Emp.all
  end

  def index
  end

  def login

  end

  def new
    @emp=Emp.new
  end

  def create
    @emp = Emp.new(user_params)
    if (request.post? and @emp.save)
      flash[:notice] = "Account Created Successfully"
      redirect_to emps_login_path
    else
      render 'new'
    end
  end
  def user_params
    params.require(:emp).permit(:name, :age, :city, :email, :password)
  end

  def show
    @emp = Emp.find(params[:id])
  end
end
