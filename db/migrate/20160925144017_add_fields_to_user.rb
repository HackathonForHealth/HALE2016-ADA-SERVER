class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :exp, :integer, :default => 0
    add_column :users, :avatar, :string
  end
end
