class MenusController < ApplicationController
  def index
    if params[:section]
      section = Section.find_by_name(params[:section])
      @items = Item.where(section_id: section.id).all
    else
      section = Section.all()
      @items = Item.all()
    end

    if params[:search]
      @items = Item.where("name LIKE ? ",params[:search])
    end

    @sections = Section.all()

    # if params[:sort_by]
  end

  def create
  end

  def show
  end
end
