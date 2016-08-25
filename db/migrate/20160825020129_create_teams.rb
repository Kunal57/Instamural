class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string  :name, { null: false }
      t.integer :captain_id, { null: false }
      t.integer :sport_id, { null: false }
      t.string  :mascot_name
      t.string  :mascot_url

      t.timestamps(null: false)
    end
  end
end
