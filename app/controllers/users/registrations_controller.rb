# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # PUT /resource
  def update
    respond_to do |format|
      if update_resource(@user, account_update_params.except(:avatar))
        AvatarAttachmentService.attach(@user, account_update_params[:avatar])

        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
