class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :type
      t.string :section
      t.string :title
      t.text :intro
      t.text :content
      t.text :summary
      t.decimal :grade
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
