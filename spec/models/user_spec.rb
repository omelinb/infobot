# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when updated' do
    subject { create(:user).avatar }

    it 'should to attach the image' do
      is_expected.to be_an_instance_of(ActiveStorage::Attached::One)
    end
  end
end
