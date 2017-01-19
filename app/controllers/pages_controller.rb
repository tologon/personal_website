class PagesController < ApplicationController
  def home
  end

  def resume_pdf
    send_file Rails.root.join('app', 'assets', 'pdf', 'resume_tologon_eshimkanov.pdf'), type: 'application/pdf', disposition: 'inline'
  end
end
