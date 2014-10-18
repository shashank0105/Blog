class Article < ActiveRecord::Base
	has_many :yourviews, dependent: :destroy
end
