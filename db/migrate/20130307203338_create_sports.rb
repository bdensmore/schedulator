class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
