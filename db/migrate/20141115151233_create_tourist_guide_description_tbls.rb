class CreateTouristGuideDescriptionTbls < ActiveRecord::Migration
  def change
    create_table :tourist_guide_description_tbls do |t|
    t.text     "tourist_description_description",            null: false
    t.datetime "tourist_description_createddate",            null: false
    t.datetime "tourist_description_modifieddate"
    t.integer  "tourist_description_createdby",    limit: 8, null: false
    t.integer  "fk_tourist_secondary_id",          limit: 8, null: false

      t.timestamps
    end
  end
end

    