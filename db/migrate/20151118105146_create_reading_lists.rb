class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :publication, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
