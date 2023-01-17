require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'has a valid factory' do
    @account = create(:account)
    ActsAsTenant.current_tenant = @account

    project = create(:project)
    expect(project.name.presence).to be_truthy
  end
  
end
