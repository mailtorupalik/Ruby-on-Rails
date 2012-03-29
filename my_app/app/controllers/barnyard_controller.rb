class BarnyardController < ApplicationController
  def noises
     first_animal=Animal.new
     @sound1=first_animal.make_noise  
end
end
