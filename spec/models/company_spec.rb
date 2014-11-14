describe Company do

  describe 'Associations' do
    it{ is_expected.to have_many(:charges) }
  end

end
