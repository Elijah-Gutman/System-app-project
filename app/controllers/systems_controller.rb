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

  def show
    @system = System.find_by(id: params[:id])
    render :show
  end

  def update
    @system = System.find_by(id: params[:id])
    if @system.update(
      country_name: params[:country_name] || @system.country_name,
      economic_system: params[:economic_system] || @system.economic_system,
      economic_index: params[:economic_index] || @system.economic_index,
      governmental_system: params[:governmental_system] || @system.governmental_system,
      governmental_index: params[:governmental_index] || @system.governmental_index,
      cultural_system: params[:cultural_system] || @system.cultural_system,
      cultural_index: params[:cultural_index] || @system.cultural_index,
      image_url: params[:image_url] || @system.image_url,
      wiki_page: params[:wiki_page] || @system.wiki_page,
    )
      render :show # This will render the `show.json.jbuilder` view to display the updated system in JSON format
    else
      render json: { errors: @system.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
