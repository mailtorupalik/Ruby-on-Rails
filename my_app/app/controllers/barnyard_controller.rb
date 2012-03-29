class BarnyardController < ApplicationController
  def noises

     @first_animal=Animal.new
	@first_animal.name='cow'
     @first_animal.noise='Moo!!'     

     @second_animal=Animal.new
	@second_animal.name='pig'     
	@second_animal.noise='Oink!!'     
	
end
end
