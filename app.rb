class TwitterArchiver

	def initialize(twitter_handle)
		user_data = JSON.parse(`curl search.twitter.com/search.json?q=#{twitter_handle}`)
		newfile = File.new("#{twitter_handle}_info.txt", "w")
		newfile.write(user_data)
	end
end