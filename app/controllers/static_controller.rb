class StaticController < ApplicationController
  def home
  end

  def about
  end

  def cats
    @cats = CatAPI.new.get_images(results_per_page: 1)
  end
end
