class PagesController < ApplicationController
  def home
  end

  def resume_pdf
    send_file Rails.root.join('app', 'assets', 'pdf', 'resume_tologon_eshimkanov.pdf'), type: 'application/pdf', disposition: 'inline'
  end

  # POST /contact
  def contact
    @email = params[:user][:message]
    ContactMailer.new_message(@email).deliver_later
    respond_to do |format|
      format.js { flash[:notice] = "Thank you for your message!" }
    end
  end
end
