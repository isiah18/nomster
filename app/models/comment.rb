class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :place

	RATINGS = {
		'One Star' => '1_star',
		'Two Star' => '2_star',
		'Three Star' => '3_star',
		'Four Star' => '4_star',
		'Five Star' => '5_star'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end


end
