class Users::PasswordsController < Devise::PasswordsController
  skip_before_action :assert_reset_token_passed, only: :edit

  # GET /resource/password/new
  def new
    # super
    redirect_to root_url
  end

  # POST /resource/password
  def create
    # super
    redirect_to root_url
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    # super
    redirect_to root_url
  end

  # PUT /resource/password
  def update
    # super
    redirect_to root_url
  end

  protected

  def after_resetting_password_path_for(resource)
    # super(resource)
    redirect_to root_url
  end

  # The path used after sending reset password instructions
  def after_sending_reset_password_instructions_path_for(resource_name)
    # super(resource_name)
    redirect_to root_url
  end
end
