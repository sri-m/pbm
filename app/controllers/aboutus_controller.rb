class AboutusController < ApplicationController
	layout "details"
	before_action :authenticate_member!
  def about
  end
end
