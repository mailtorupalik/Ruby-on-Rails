class Animal  #< ActiveRecord::Base -- bcoz of this we hav to connect to DB

attr_accessor :name

def noise   
  @noise
end

def noise=(new_noise)
   @noise=new_noise
end
	
end
