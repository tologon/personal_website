class ContactMailer < ApplicationMailer
  default from: 'no-reply@eshimkanov.com'
  default sender: 'no-reply@eshimkanov.com'

  def new_message(user)
    @user = user
    mail(to: ENV['ESHIMKANOV_EMAIL'], subject: 'New Message')
  end

  def thank_you(user)
    @user = user
    mail(to: @user[:email], subject: 'Thank you for your message!')
  end
end
