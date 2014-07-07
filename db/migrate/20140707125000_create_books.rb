class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.library_id :integer
	  t.author_id :integer
      t.timestamps
    end
  end
end
