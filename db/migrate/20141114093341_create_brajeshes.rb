class CreateBrajeshes < ActiveRecord::Migration
  def change
    create_table :brajeshes do |t|
      t.string :name

      t.timestamps
    end
  end
end
