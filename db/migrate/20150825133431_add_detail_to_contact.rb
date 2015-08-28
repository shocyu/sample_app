class AddDetailToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :admin, :string
    add_column :contacts, :text, :string
  end
end
