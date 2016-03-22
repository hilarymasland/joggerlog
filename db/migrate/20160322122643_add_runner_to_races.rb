class AddRunnerToRaces < ActiveRecord::Migration
  def change
    add_reference :races, :runner, index: true
  end
end
