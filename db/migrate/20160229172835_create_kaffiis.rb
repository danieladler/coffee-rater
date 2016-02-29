class CreateKaffiis < ActiveRecord::Migration
  def change
    create_table :kaffiis do |t|
      t.string :name
      t.string :origin
      t.string :roast

      t.timestamps null: false
    end
  end
end
