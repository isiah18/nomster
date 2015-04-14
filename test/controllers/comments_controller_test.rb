require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  	test "create comment" do
   		@user = FactoryGirl.create(:user)
   		sign_in @user
   		@place = FactoryGirl.create(:place)
   		
   		assert_difference 'Comment.count' do
   			post :create, :place_id => @place.id, :comment => {
   				:message => 'yolo nom nom nom',
   				:rating => '5_star'
   				}
   			
   		end
		assert_redirected_to place_path(@place)  
   		assert_equal 1, @place.comments.count
   		
   	end
end
