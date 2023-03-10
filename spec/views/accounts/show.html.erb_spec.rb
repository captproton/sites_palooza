require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    assign(:account, Account.create!(
      name: "Name",
      subdomian: "Subdomian",
      domain: "Domain"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Subdomian/)
    expect(rendered).to match(/Domain/)
  end
end
