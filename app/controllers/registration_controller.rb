class RegistrationController < Devise::RegistrationsController
  private

  # Permits sign-up parameters
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  # Permits account update parameters
  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
