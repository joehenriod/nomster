class NotificationMailer < ActionMailer::Base
  default from: "info@lasvegastattoo.reviews"

  def comment_added
  	mail(to: "joe@ticketcake.com",
         subject: "A comment has been added to your place")
  end
end
