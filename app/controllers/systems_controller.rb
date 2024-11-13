class SystemsController < ApplicationController
  def index
    @systems = System.all
    render :index
  end
end
