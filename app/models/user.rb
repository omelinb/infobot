# frozen_string_literal: true

class User < ApplicationRecord
  has_one_attached :avatar

  validate :avatar_content_type_must_be_valid, on: :update

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_path
    ActiveStorage::Blob.service.path_for(avatar.key)
  end

  private

  def avatar_content_type_must_be_valid
    return unless avatar.attached?

    unless avatar.blob.image?
      errors.add(:avatar, 'must be an image')
    end
  end
end
