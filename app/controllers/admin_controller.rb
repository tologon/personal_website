class AdminController < ApplicationController
  before_action :authenticate_user!

  def main
    settings_path = Rails.root.join('config', 'settings.yml').to_s
    @settings = Psych.load_file(settings_path)
  end
end
