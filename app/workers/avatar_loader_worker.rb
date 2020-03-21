# frozen_string_literal: true

require 'mini_magick'

class AvatarLoaderWorker
  include Sidekiq::Worker

  def perform(filepath)
    # MiniMagick::Image.new(filepath).resize '300x300'
    MiniMagick::Image.new(filepath).crop('300x300+0+0')
  end
end
