class UsersController < ApplicationController
	
	def new
		@users = User.new
	end

	def index
		@users = User.new
	end
end
