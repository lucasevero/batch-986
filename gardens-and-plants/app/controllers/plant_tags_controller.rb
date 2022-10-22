class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create

    @tags = Tag.where(id: params[:plant_tag][:tag])
    @plant = Plant.find(params[:plant_id])
    @garden = @plant.garden

    @tags.each do |tag|
      @tag = tag
      @plant_tag = PlantTag.new(tag: @tag)
      @plant_tag.plant = @plant
      @plant_tag.tag = @tag

      @plant_tag.save
    end

    redirect_to garden_path(@garden)
  end
end
