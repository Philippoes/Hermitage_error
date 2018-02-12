class ImageController < ApplicationController
  def index
    @images = Image.all
  end

  def new
  end

  def create
    save_images()
    redirect_to(image_index_path)
  end

  private

  def save_images()
    if params[:image][:images_front] != nil && params[:image][:images_front].length > 0
      params[:image][:images_front].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "front")
        i.save!
      end
    end
    if params[:image][:images_left] != nil && params[:image][:images_left].length > 0
      params[:image][:images_left].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "left")
        i.save!
      end
    end
    if params[:image][:images_right] != nil && params[:image][:images_right].length > 0
      params[:image][:images_right].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "right")
        i.save!
      end
    end
    if params[:image][:images_front_right] != nil && params[:image][:images_front_right].length > 0
      params[:image][:images_front_right].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "front-right")
        i.save!
      end
    end
    if params[:image][:images_front_left] != nil && params[:image][:images_front_left].length > 0
      params[:image][:images_front_left].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "front-left")
        i.save!
      end
    end
    if params[:image][:images_front_single_left] != nil && params[:image][:images_front_single_left].length > 0
      params[:image][:images_front_single_left].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "front-single-left")
        i.save!
      end
    end
    if params[:image][:images_front_single_right] != nil && params[:image][:images_front_single_right].length > 0
      params[:image][:images_front_single_right].each do |image_param|
        i = Image.new
        i.image = image_param
        i.category = Category.find_by(name: "front-single-right")
        i.save!
      end
    end
  end
end
