class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @job = @contact.jobs.create(job_params)
    
    redirect_to contact_path(@contact)
  end
  
  def show
    @job = Job.find(params[:id])
  end  
    
    
  private
    
  def job_params
    params.require(:job).permit(:title, :contact_id, :company_id)
  end

end
