class TwitterArchiver
	require 'JSON'

	def initialize(user_name)
		@user_name = user_name
	end

	def getTwitterData
		@user_data = JSON.parse(`curl search.twitter.com/search.json?q=#{@user_name}`)
	end
	
	def saveData
		@newFile = File.new("#{@user_name}_info.txt", "w")
		@newFile.write(@user_data)
	end
end

user_name = ARGV[0]

t1 = TwitterArchiver.new(user_name)
t1.getTwitterData()
t1.saveData()

# t2 = TwitterArchiver.new("one")
# t3 = TwitterArchiver.new("two")