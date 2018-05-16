class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_many :articles, dependent: :destroy

	Article.import
	# Article.import(force: true)
end
