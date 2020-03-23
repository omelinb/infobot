# frozen_string_literal: true

require 'rails_helper'
require 'sidekiq/testing'
Sidekiq::Testing.fake!

RSpec.describe AvatarCropWorker, type: :worker do
  context 'when launched' do
    before(:each) do
      @image = MiniMagick::Image.open('spec/fixtures/ruby.png')
    end

    after(:each) do
      @image = nil
    end

    it 'should change dimensions' do
      described_class.new.perform(@image.path)
      expect(@image.dimensions).to eq([300, 300])
    end

    it 'goes into the jobs array for testing environment' do
      expect do
        described_class.perform_async(@image.path)
      end.to change(described_class.jobs, :size).by(1)
    end
  end
end
