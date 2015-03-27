class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
 		mail(to: "isiahsingh18@gmail.com", subject: "You just added a comment")
  
	end 

end
