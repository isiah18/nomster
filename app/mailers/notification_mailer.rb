class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
  	@place = comment.place
  	@place_creator = @place.user
 		mail(to: @place_creator.email, subject: "A comment has been added to #{@place.name}")
  
	end 

end
