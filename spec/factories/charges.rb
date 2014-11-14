FactoryGirl.define do
  factory :charge do
    amount 50
    unique_code 'AA111'
    paid true
    refunded false
    association :chargeable, factory: :user
  end
end
