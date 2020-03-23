# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  after_action :crop_avatar, only: [:update]

  private

  def crop_avatar
    unless account_update_params[:avatar].nil?
      AvatarCropWorker.perform_async(@user.avatar_path)
    end
  end
end
