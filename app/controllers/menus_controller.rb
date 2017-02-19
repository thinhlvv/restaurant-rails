class MenusController < ApplicationController
  def index
    section = Section.find_by_name(params[:section])
    @items = Item.where(section_id: section.id).all
    @sections = Section.all()
  end

  def create
  end

  def show
  end
end
