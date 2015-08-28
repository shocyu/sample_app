class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :admin
      t.string :string

      t.timestamps
    end
  end
end
