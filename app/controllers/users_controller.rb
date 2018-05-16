class UsersController < ApplicationController

	def show
		@exe_time = Benchmark.measure {
			@user = User.first
			@post = @user.posts.first
			@count = @user.posts.count
		}
	end

	def search
		p '*'*100
		if params[:commit] == "Search"
			@exe_time = Benchmark.measure {
				result = Post.where('title like ?', "%#{params[:content]}%")
				result = Post.where('tags like ?', "%#{params[:content]}%") unless result.present?
				result = Post.where('body like ?', "%#{params[:content]}%") unless result.present?
				result.present? ? @found_at = result.first.id : @found_at = "not found"
				p @found_at
			}
		elsif params[:commit] == "Elastic Search"
			@exe_time = Benchmark.measure {
				result = Article.search(params[:content])
				result.present? ? @found_at = result.first.id : @found_at = "not found"
				p @found_at
			}
		end
		request.format = :json
	end
end