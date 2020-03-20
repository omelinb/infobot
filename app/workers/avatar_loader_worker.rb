require 'mini_magick'

class AvatarLoaderWorker
  include Sidekiq::Worker

  def perform(filepath)
    MiniMagick::Image.new(filepath).resize '300x300'
  end
end
