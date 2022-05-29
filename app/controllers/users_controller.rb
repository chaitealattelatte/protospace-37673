class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.all
  end

  private
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :name, :profile, :occupation, :position)
   end
end
