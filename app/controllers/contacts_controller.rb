class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all.order('last_name ASC')
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    @contact.save
    redirect_to @contact
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :children, :significant_other)
  end  
end
