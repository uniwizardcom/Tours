module SessionHelper
	def logoutExecute
		session[ENV['HTTP_HOST']] = false
	end

	def loginExecute(keyToCheck, passToCheck)
		session[ENV['HTTP_HOST']] = {
					'user' => {
							'email' => keyToCheck,
							'pass' => passToCheck
						}
				}
	end

	def getLoginUser
		checkForFirstUse()
		#puts session[ENV['HTTP_HOST']].include?("user")
		#puts session[ENV['HTTP_HOST']]
		#puts (session[ENV['HTTP_HOST']].class == Hash)
		if (session[ENV['HTTP_HOST']].class == Array || session[ENV['HTTP_HOST']].class == Hash) && session[ENV['HTTP_HOST']].include?("user")
			return session[ENV['HTTP_HOST']]['user']
		end

		puts "-- false"
		return false
	end

	def checkForFirstUse
		@res = session[ENV['HTTP_HOST']]
		if !@res
			session[ENV['HTTP_HOST']] = {
					'user' => false
				}
		end

		return @res
	end
end
