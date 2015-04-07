require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   
   test "humanized rating test" do
      RATINGS = {
	    'one star'    => '1_star',
	    'two stars'   => '2_stars',
	    'three stars' => '3_stars',
	    'four stars'  => '4_stars',
	    'five stars'  => '5_stars',
  		}
  		comment = FactoryGirl.create(:comment)
  		p comment
  		assert_equal 'four stars', comment.humanized_rating


   end
end
