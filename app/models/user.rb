class User < ActiveRecord::Base
	validates_presence_of :username, :password
	validates :password, confirmation: true
end
