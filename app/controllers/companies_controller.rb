class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
  end
  
  def new
  end
  
  def create
    @company = Company.new(company_params)
    @company.save
    
    redirect_to @company
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  
  private
  
  def company_params
    params.require(:company).permit(:name)
  
  end
  
  
  
end
