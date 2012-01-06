class TwitterArchiver

	require 'JSON'

	def initialize(user_name)
		@user_name = user_name
	end


	def getTwitterData
		@user_data = JSON.parse(`curl search.twitter.com/search.json?q=#{@user_name}`)
		puts @user_data
	end
	
	def saveData
		@newFile = File.new("#{a}_info.txt", "w")
		@newFile.write()
	end

end

ARGV.each do |a|
	@user_name = a
end

t1 = TwitterArchiver.new(@user_name)
t1.getTwitterData()
