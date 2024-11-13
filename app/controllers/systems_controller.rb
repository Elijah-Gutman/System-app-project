class SystemsController < ApplicationController
  def index
    @systems = System.all
    render :index
  end

  def create
    @system = System.create(
      country_name: params[:country_name],
      economic_system: params[:economic_system],
      economic_index: params[:economic_index],
      governmental_system: params[:governmental_system],
      governmental_index: params[:governmental_index],
      cultural_system: params[:cultural_system],
      cultural_index: params[:cultural_index],
      image_url: params[:image_url],
      wiki_page: params[:wiki_page],
    )
    render :show
  end
end
