class AddPreferencesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tech_preference, :boolean, :default => true
    add_column :users, :gadget_preference, :boolean, :default => true
    add_column :users, :gaming_preference, :boolean, :default => true
  end
end
