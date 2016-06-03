class CreateProject00s < ActiveRecord::Migration
  def change
    create_table :project00s do |t|

      t.timestamps null: false
    end
  end
end
