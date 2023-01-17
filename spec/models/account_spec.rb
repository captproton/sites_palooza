require 'rails_helper'

RSpec.describe Account, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'has a valid factory' do
    account = create(:account)
    expect(account.name.presence).to be_truthy
  end

end
