class UsersController < ApplicationController

	def show
		@user = User.first
		@exe_time = Benchmark.measure { @posts = @user.posts }
	end
end