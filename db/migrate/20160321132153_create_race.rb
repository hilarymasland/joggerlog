class CreateRace < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :title
      t.string :date
      t.string :time
    end
  end
end
