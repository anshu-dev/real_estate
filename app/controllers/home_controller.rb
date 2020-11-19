class HomeController < ApplicationController
  def index
  	@houses = House.latest_houses
  	@complex_buildings = ComplexBuilding.latest_complexes
  	@commercial_units = CommercialUnit.latest_commercials
  end

	def very_long_task
		byebug
  	#sleep 60
  	ManagerMailer.mail_info(current_manager.email).deliver
		#@users = User.all
	end
end
