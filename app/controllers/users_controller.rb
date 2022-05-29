class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
  end

  private
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :name, :profile, :occupation, :position)
   end
end
