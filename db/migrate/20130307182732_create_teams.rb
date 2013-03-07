class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :player_count
      t.boolean :is_paid

      t.timestamps
    end
  end
end
