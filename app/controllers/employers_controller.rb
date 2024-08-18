class EmployersController < ApplicationController
  def index
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(params[:employer])
    if @employer.save
      flash[:success] = "Employer successfully created"
      redirect_to @employer
    else
      flash[:error] = "Something went wrong"
      render "new"
    end
  end
end
