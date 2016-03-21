class AddTitleToRunners < ActiveRecord::Migration
  def change
    add_column :races, :title, :string
    add_column :races, :date, :date
    add_column :races, :time, :string
  end
end
