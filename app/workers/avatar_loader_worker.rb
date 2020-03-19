class AvatarLoaderWorker
  include Sidekiq::Worker

  def perform(user, avatar)
    puts 'It is working'
  end
end
