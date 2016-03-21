class CreateRunner < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :name
    end
  end
end
