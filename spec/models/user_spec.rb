require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations#" do
    it 'validates presences of attributes' do
      should validate_presence_of(:email).with_message('não pode ficar em branco.')
      should validate_presence_of(:password).with_message('não pode ficar em branco.')
      should validate_presence_of(:user_name).with_message('não pode ficar em branco.')
    end

    it 'validate enum' do
      should define_enum_for(:role).with_values([:consumer, :admin])
    end
  end
end
