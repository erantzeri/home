class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all.order('last_name ASC')
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end    
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
  def update
    @contact = Contact.find(params[:id])
    if @contact.update(params[:contact].permit(:first_name, :last_name, :children, :significant_other, :bday))
      redirect_to @contact
    else
      render 'edit'
    end 
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    
    redirect_to contacts_path
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :children, :significant_other)
  end  
end
