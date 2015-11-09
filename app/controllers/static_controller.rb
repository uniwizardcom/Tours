class StaticController < ApplicationController
  include SessionHelper

  def index
  	@blabla = "xxxxxxxxxxxxxxxxxxxx xxxxxxxxxxx"
  	if getLoginUser()
  		@blabla = "Zalogowany"
  	end
  end

  def login
  	if getLoginUser()
  		//
  	end
  end

  def loginExe
  	puts "loginExe"
  	loginExecute(
  		params['appdata']['email'],
  		params['appdata']['pass']
  	)
  	redirect_to :action => "index"
  end

  def logout
  	logoutExecute()
  end

  def registration
  	if getLoginUser()
  		//
  	end
  end
end
