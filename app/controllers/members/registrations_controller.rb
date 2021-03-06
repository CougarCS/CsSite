class Members::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:member).permit(:classification, :returning, :dietary_restrictions, :first_name, :last_name, :email, :card, :gender, :student_id, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:member).permit(:classification, :returning, :dietary_restrictions, :first_name, :last_name, :email, :card, :gender, :student_id, :password, :password_confirmation, :current_password)
  end
end
