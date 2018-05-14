class User < ActiveRecord::Base
	has_many :posts
	# sio = StringIO.new(Base64.decode64(string))
end
