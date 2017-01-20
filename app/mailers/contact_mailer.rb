class ContactMailer < ApplicationMailer
  default from: 'notifications@eshimkanov.com'

  def new_message(email)
    @email = email
    @url = 'http://www.eshimkanov.com/'
    mail(to: 'teshimkanov@gmail.com', subject: 'Test from eshimkanov.com')
  end
end
