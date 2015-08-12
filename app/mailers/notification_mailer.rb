class NotificationMailer < ActionMailer::Base
  default from: "checkoutmycattattoo@gmail.com"

def comment_added(comment)
@place = comment.place
@place_owner = @place.user

  mail(to: place_owner.emal,
       subject: "A comment has been added to #{@place.name}")
end
end