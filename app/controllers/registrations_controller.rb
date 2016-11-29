class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :numeric_id, :alternative_numeric_id, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :numeric_id, :alternative_numeric_id, :email, :password, :password_confirmation, :current_password)
  end
end