class HomeController < ApplicationController
  def index
    @message = Message.new
    if user_signed_in?
      @user_contacts = current_user.contacts
    end
  end
end
