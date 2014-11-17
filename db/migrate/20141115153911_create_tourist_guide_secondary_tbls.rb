class CreateTouristGuideSecondaryTbls < ActiveRecord::Migration
  def change
    create_table :tourist_guide_secondary_tbls do |t|

      t.timestamps
    end
  end
end
