describe Charge do

  describe 'Associations' do
    it{ is_expected.to belong_to(:chargeable) }
  end

  describe 'instance methods' do

    describe 'set_unique_code' do
      it 'sets a unique code for the chrge object' do
        charge = FactoryGirl.create :charge
        expect(charge.unique_code).to_not be_blank
      end
    end

    describe 'find_chargeable' do
      it 'returns associated chargable object' do
        charge = FactoryGirl.create :charge
        expect(charge.find_chargeable.class).to eq(User)
        expect(charge.find_chargeable).to eq(User.find(charge.chargeable_id))
      end
    end

    describe 'status' do
      it 'returns successful for a charge that is paid and not refunded' do
        charge = FactoryGirl.create :charge
        expect(charge.status).to eq('Successful')
      end

      it 'returns disputed for a transaction that is paid and refunded' do
        charge = FactoryGirl.create(:charge, refunded: true)
        expect(charge.status).to eq('Disputed')
      end

      it 'returns Failed for a transaction that us not paid' do
        charge = FactoryGirl.create(:charge, paid: false)
        expect(charge.status).to eq('Failed')
      end
    end

  end
end
