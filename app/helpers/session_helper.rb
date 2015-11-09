module SessionHelper
	def sessionLogoutExecute
		session[ENV['HTTP_HOST']] = false
	end

	def sessionLoginExecute(keyToCheck, passToCheck)
		sessionSetValue('user', {
							'email' => keyToCheck,
							'pass' => passToCheck
						})
	end

	def sessionGetLoginUser
		sessionCheckForFirstUse()
		return sessionGetValue('user', false)
	end

	def sessionCheckForFirstUse
		if !(@res = session[ENV['HTTP_HOST']])
			sessionSetValue('user', false)
		end
		return @res
	end

	def sessionSetValue(key, value)
		if (session[ENV['HTTP_HOST']].class == Array || session[ENV['HTTP_HOST']].class == Hash)
			session[ENV['HTTP_HOST']][key] = value
		else
			session[ENV['HTTP_HOST']] = {
				key => value
			}
		end
	end

	def sessionGetValue(key, defaultValue)
		if sessionCheckExists("user")
			return session[ENV['HTTP_HOST']][key]
		end
		return defaultValue
	end

	def sessionCheckExists(key)
		return ((session[ENV['HTTP_HOST']].class == Array || session[ENV['HTTP_HOST']].class == Hash) && session[ENV['HTTP_HOST']].include?(key))
	end
end
