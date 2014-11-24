class ContactsController < ApplicationController
	layout "details"
	before_action :authenticate_member!
  def contactus
  end
end
