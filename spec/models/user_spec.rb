require 'spec_helper'
require 'rails_helper'

describe User do

  describe 'Associations' do
    it{ is_expected.to have_many(:charges) }
  end

  describe 'Instance methods' do
    before do
      @user = FactoryGirl.create(:user)
    end

    describe 'name' do
      it 'returns combination of first_name and last_name as name' do
        expect(@user.name).to eq('John Doe')
      end
    end
  end

end
