require 'rails_helper'

RSpec.describe Manager, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = Manager.create(first_name: "firstname", last_name: "lastname", email: "test@gmail.com", role: 1, password: "123456", password_confirmation: "123456")
      expect(user).to be_valid
    end
  end

  describe 'validations' do
    describe 'it validates email' do
      it { is_expected.to validate_presence_of(:email) }
    end
  end
end
