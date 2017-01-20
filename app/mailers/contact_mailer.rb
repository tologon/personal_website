class ContactMailer < ApplicationMailer
  default from: 'notifications@eshimkanov.com'

  def new_message(user)
    @user = user
    @url = 'http://www.eshimkanov.com/'
    mail(to: @user.email, subject: 'Test from eshimkanov.com')
  end
end
