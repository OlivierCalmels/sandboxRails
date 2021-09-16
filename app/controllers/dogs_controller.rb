class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @badgeURL = "#{request.base_url}/dogs/#{@dog.id}/badge.svg"

  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create(dog_params)

    redirect_to dog_path(dog)
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    @dog.update(dog_params)

    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    redirect_to dogs_path
  end

  def badge
    @dog = Dog.find(params[:id])
    svg = '<svg xmlns="http://www.w3.org/2000/svg" width="400" height="40" viewBox="0 0 400 40"><path fill="#303133" d="M11.547 40L0 20 11.547 0h360.467v40z"/>
    <text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="20" fill="#E8E8E8" x="77" y="27"> <%= @dog.name %></text>  
    <text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="20" fill="#E8E8E8" x="200" y="27"> <%= @dog.motto %></text>  
    
    <text font-family="Lato, HelveticaNeue, Helvetica Neue, Helvetica, Arial, sans-serif" font-size="14" fill="#ECB613" x="32" y="18.77" text-anchor="middle" transform="translate(7 6)">5 kyu</text>
    </svg>'

    #{request.base_url}

    respond_to do |format|
      format.svg { render inline: svg}
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :motto)
  end

end