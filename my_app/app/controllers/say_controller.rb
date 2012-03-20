class SayController < ApplicationController
 
 public

  def index
	hello
	render(:controller =>'say',:action =>'hello')
  end

  def hello
      @text = 'Hello world!'
	private_action
  end
  
  def goodbye
      @text = 'Goodbye world!'
  end

  def welcome
      @text='Welcome Text!'
      redirect_to(:controller =>'say',:action =>'index')
  end

private

 def private_action
	@text='This is private action'
 end
 
end
