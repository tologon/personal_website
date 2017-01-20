class ContactMailer < ApplicationMailer
  default from: 'notifications@eshimkanov.com'

  def new_message(message)
    @message = message
    @url = 'http://www.eshimkanov.com/'
    mail(to: @message.email, subject: 'Test from eshimkanov.com')
  end
end
