class ArtworksController < ApplicationController
  def index
    @artwork = Artwork.all
    render json: @artwork
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  #NOTE: Hits the database with the error message.
  def show
    artwork = find_artwork(:id)
    if artwork
      render json: artwork
    else
      render plain: "Couldnt find artwork"
      # render text: "no artwork"
    end
  end

  def update
    artwork = find_artwork(:id)
    if artwork
      artwork.update(artwork_params)
      render json: artwork
    else
      render plain: "Cannot update artwork"
    end
  end

  def destroy
    artwork = find_artwork(:id)
    if artwork && artwork.destroy
      render json: artwork
    else
      render plain: "Couldnt destroy artwork"
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end

  def find_artwork(val)
   Artwork.find_by(val => params[val])
  end
end
