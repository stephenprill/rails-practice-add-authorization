class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :student, null: false
      t.belongs_to :club, null: false
      t.boolean :leader, null: false, default: false
      t.timestamps
    end
  end
end
