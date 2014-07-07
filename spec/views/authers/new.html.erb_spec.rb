require 'rails_helper'

RSpec.describe "authers/new", :type => :view do
  before(:each) do
    assign(:auther, Auther.new(
      :name => "MyString",
      :book_id => 1
    ))
  end

  it "renders new auther form" do
    render

    assert_select "form[action=?][method=?]", authers_path, "post" do

      assert_select "input#auther_name[name=?]", "auther[name]"

      assert_select "input#auther_book_id[name=?]", "auther[book_id]"
    end
  end
end
