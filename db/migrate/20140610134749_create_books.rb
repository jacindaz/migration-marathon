class CreateBooks < ActiveRecord::Migration
  def change
    #line 4 creates a table, called books. |t| represents table
    create_table :books do |t|
      t.string :title, null: false   #this is a varchar or 255 length, ruby calls it a string, even though the db uses varchar. it's the same thing but different names
      #what line 5 really does it t.string(:title, {null: false})
    end
  end

  def up
    create_table :books do |t|
      t.string :title, null: false
    end
  end

  def down
    drop_table :books
  end

end
