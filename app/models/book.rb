class Book < ActiveRecord::Base

belongs_to :libarary
belongs_to :author
validates :name, presence: true
end
