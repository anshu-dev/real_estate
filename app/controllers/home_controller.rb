class HomeController < ApplicationController
  def index
    @houses = House.latest_houses
    @complex_buildings = ComplexBuilding.latest_complexes
    @commercial_units = CommercialUnit.latest_commercials
  end

  def very_long_task
    sleep 60
    if params[:table_name].eql?('commercial_unit')
      recipient_email = CommercialUnit.find(params[:id]).manager.email
    elsif params[:table_name].eql?('complex_buildings')
      recipient_email = ComplexBuilding.find(params[:id]).manager.email
    elsif params[:table_name].eql?('houses')
      recipient_email = House.find(params[:id]).manager.email
    end

    ManagerMailer.buyer(current_manager, recipient_email).deliver
    ManagerMailer.seller(current_manager, recipient_email).deliver
  end
end
