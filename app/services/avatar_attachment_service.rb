class AvatarAttachmentService
  class << self
    def attach(user, avatar)
      return if avatar.nil?

      user.avatar.attach(avatar)
      AvatarLoaderWorker.perform_async(user.avatar_path)
    end
  end
end
