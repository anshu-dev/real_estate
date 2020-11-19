class ManagerMailer < ApplicationMailer
	def mail_info(user)
    @user = user
    mail(to: @user.email, subject: 'Test Email for Letter Opener')
  end
end
