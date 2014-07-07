require 'rails_helper'

RSpec.describe "authers/show", :type => :view do
  before(:each) do
    @auther = assign(:auther, Auther.create!(
      :name => "Name",
      :book_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
