class AddImageUrlToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :img_string, :string
  end
end
