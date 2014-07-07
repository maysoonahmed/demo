require 'rails_helper'

RSpec.describe "authers/index", :type => :view do
  before(:each) do
    assign(:authers, [
      Auther.create!(
        :name => "Name",
        :book_id => 1
      ),
      Auther.create!(
        :name => "Name",
        :book_id => 1
      )
    ])
  end

  it "renders a list of authers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
