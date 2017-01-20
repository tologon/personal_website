class PagesController < ApplicationController
  def home
  end

  def resume_pdf
    send_file Rails.root.join('app', 'assets', 'pdf', 'resume_tologon_eshimkanov.pdf'), type: 'application/pdf', disposition: 'inline'
  end

  def contact
    @email = params[:user][:message]
    if verify_recaptcha(secret_key: ENV['RECAPTCHA_PRIVATE_KEY'])
      ContactMailer.new_message(@email).deliver_later
      respond_to do |format|
        format.js { flash[:notice] = "Thank you for your message!" }
      end
    else
      respond_to do |format|
        format.js { flash[:error] = "Couldn't verify that you are a human!" }
      end
    end
  end
end
