class CreatePoptarts < ActiveRecord::Migration
  def change
    create_table :poptarts do |t|
      t.string :flavor
      t.string :topping
    end
  end
end
