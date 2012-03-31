class BarnyardController < ApplicationController
  
  def noises

     @barnyard=Barnyard.new

     @barnyard.put_in_pen(Cow.new)
    
     big_cow=Cow.new
     big_cow.noise='MOOO!!'     
	
     @barnyard.put_in_pen(big_cow)	

     @barnyard.put_in_pen(Pig.new)   
	
     @barnyard.put_in_pen(Duck.new)

     chosen_names = ["Harold","Marvin","Wilbur","Gertrud"]
     @barnyard.assign_names( chosen_names )

  end
end
