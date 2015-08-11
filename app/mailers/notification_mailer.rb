class NotificationMailer < ActionMailer::Base
  default from: "checkoutmycattattoo@gmail.com"

  def comment_added
  	mail(to: "joe@ticketcake.com",
         subject: "A comment has been added to your place")
  end
end
