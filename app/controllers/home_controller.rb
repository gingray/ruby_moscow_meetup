class HomeController < ApplicationController
  def index
  end

  def parse
    @msg = 'F*uck yeah'
    num = [1, 2, 3].sample
    @image_name = "success_#{num}.gif"
  end
end
