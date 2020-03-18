# frozen_string_literal: true

module Admin
  class ContactsController < Admin::ApplicationController
    def show
      if requested_resource.nil?
        redirect_to admin_contacts_path, notice: "You don't have this contact"
      else
        super
      end
    end

    private

    def resource_params
      params.require(:contact).permit(:name, :phone, :user_id)
    end

    def requested_resource
      @requested_resource = current_user.contacts.find_by_id(params[:id])
    end

    def scoped_resource
      current_user.contacts
    end
  end
end
