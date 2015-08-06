class CreateRecNums < ActiveRecord::Migration
  def change
    create_table :rec_nums do |t|
      t.integer :number

      t.timestamps
    end
  end
end
