class CreateDatapoints < ActiveRecord::Migration
  def change
    create_table :datapoints do |t|
      t.decimal :value
      t.datetime :interval

      t.timestamps null: false
    end
  end
end
