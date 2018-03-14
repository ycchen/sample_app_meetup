require 'rails_helper'

RSpec.describe "memberships/edit", type: :view do
  before(:each) do
    @membership = assign(:membership, Membership.create!(
      :group => nil,
      :user => nil,
      :role => nil
    ))
  end

  it "renders the edit membership form" do
    render

    assert_select "form[action=?][method=?]", membership_path(@membership), "post" do

      assert_select "input[name=?]", "membership[group_id]"

      assert_select "input[name=?]", "membership[user_id]"

      assert_select "input[name=?]", "membership[role_id]"
    end
  end
end
