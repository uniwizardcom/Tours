class StaticController < ApplicationController
  include SessionHelper

  def index
  	@blabla = "xxxxxxxxxxxxxxxxxxxx xxxxxxxxxxx"
  	if sessionGetLoginUser()
  		@blabla = "Zalogowany"
  	end
  end

  def login
  	if sessionGetLoginUser()
  		//
  	end
  end

  def loginExe
  	puts "loginExe"
  	sessionLoginExecute(
  		params['appdata']['email'],
  		params['appdata']['pass']
  	)
  	redirect_to :action => "index"
  end

  def logout
  	sessionLogoutExecute()
  end

  def registration
  	if sessionGetLoginUser()
  		//
  	end
  end
end
