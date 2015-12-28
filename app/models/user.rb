class User < ActiveRecord::Base

  def user_params
    params.require(:user).permit(:address1, :address2, :address3, :city, :state_code, :country_code, :postal_code)
  end
end
