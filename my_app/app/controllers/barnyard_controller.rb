class BarnyardController < ApplicationController
  def noises

	@barnyard=[]
     animal=Cow.new
     
	@barnyard << animal

     animal=Animal.new
     animal.name='pig'     
   # animal.noise='Oink!!'     
     @barnyard << animal

     animal=Animal.new
     @barnyard << animal


end
end
