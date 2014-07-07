require 'rails_helper'

RSpec.describe "authers/edit", :type => :view do
  before(:each) do
    @auther = assign(:auther, Auther.create!(
      :name => "MyString",
      :book_id => 1
    ))
  end

  it "renders the edit auther form" do
    render

    assert_select "form[action=?][method=?]", auther_path(@auther), "post" do

      assert_select "input#auther_name[name=?]", "auther[name]"

      assert_select "input#auther_book_id[name=?]", "auther[book_id]"
    end
  end
end
