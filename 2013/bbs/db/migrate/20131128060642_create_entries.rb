class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :user_name
      t.text :content

      t.timestamps
    end
  end
end
