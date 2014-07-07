# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auther do
    name "MyString"
    date_of_birth "2014-07-07"
    book_id 1
  end
end
