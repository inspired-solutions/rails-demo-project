
include BreedsHelper

class BreedsController < ApplicationController

  def index
    @breed = DogBreedFetcher.fetch
    @breeds = BreedsHelper.get_breeds['message']
  end


  def show_photo
    @breed = DogBreedFetcher.fetch(params['breed'])
    render :json => @breed
  end





end
