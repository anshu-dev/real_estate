class ManagerMailer < ApplicationMailer
  def buyer(user, recipient_email)
    @user = user
    @recipient_email = recipient_email
    mail(from:@user.email,  to: @recipient_email, subject: 'Want to buy property')
  end

  def seller(user, recipient_email)
    @user = user
    @recipient_email = recipient_email
    mail(from:@recipient_email,  to:@user.email, subject: 'Okay, I send you details')
  end
end