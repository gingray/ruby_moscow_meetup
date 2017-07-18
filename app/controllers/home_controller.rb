class HomeController < ApplicationController
  def index
  end

  def parse
    @passport, err = Parser.parse params[:data]
    @msg = 'F*uck yeah'
    image_type = 'success'
    unless @passport
      @msg = 'Hell no!!!' 
      image_type = 'fail' unless @passport
    end
    num = [1, 2, 3].sample
    @image_name = "#{image_type}_#{num}.gif"
  end
end
