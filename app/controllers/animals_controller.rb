class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find_by(id: params[:id].to_i)

    if @animal.nil?
      render :notfound, status: :not_found
    end
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.new(animal_params)
    if animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def update
    animal = Animal.find_by(id: params[:id].to_i)
    animal.update(animal_params)
    if animal.save
      redirect_to animal_path(animal.id)
    else
      render :new
    end
  end

  def destroy
    animal = Animal.find_by(id: params[:id].to_i)
    if Animal.delete(animal)
      redirect_to root_path
    else
      render :not_found
    end
  end

  private

    def animal_params
      return params.require(:animal).permit(:name, :species, :age, :image)
    end
end
