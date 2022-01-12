require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations#" do
    it 'validates presences of attributes' do
      should validate_presence_of(:email)
      should validate_presence_of(:password)
      should validate_presence_of(:user_name)
    end

    it 'validate enum' do
      should define_enum_for(:role).with_values([:consumer, :admin])
    end
  end
end
