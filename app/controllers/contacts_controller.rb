class ContactsController < ApplicationController
  before_action :set_contact, only: :show

  def index
    @page_title = "Contacts"
  end

  def new
    @page_title = "Contact Us"
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(safe_params)
    if @contact.save
      redirect_to @contact
    else
      @page_title = "Contact Us"
      render :new
    end
  end

  def show
    @page_title = "Contact From #{@contact.first_name} #{@contact.last_name}"
  end

  private

  def set_contact
    @contact = Contact.find_by_id(params[:id])
  end

  def safe_params
    params.require(:contact)
          .permit(
            :first_name,
            :last_name,
            :email,
            :zip_code,
            :state,
            :message
          )
  end
end
