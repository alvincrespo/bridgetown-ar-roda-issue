class CreateSignups < ActiveRecord::Migration[7.1]
  def up
    create_table :signups do |t|
      t.string :email, index: true, null: false
      t.timestamps
    end
  end

  def down
    drop_table(:signups)
  end
end
