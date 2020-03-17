class CreateGroupDates < ActiveRecord::Migration[5.2]
  def change
    create_table :group_dates do |t|
      t.string :title, null: false
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
