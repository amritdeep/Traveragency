class CreateTouristGuideImageTbls < ActiveRecord::Migration
  def change
    create_table :tourist_guide_image_tbls do |t|
    t.string   "tourist_image_name",         limit: 100, null: false
    t.integer  "fk_tourist_description_id",  limit: 8,   null: false
    t.datetime "tourist_image_createddate",              null: false
    t.datetime "tourist_image_modifieddate"
    t.integer  "tourist_image_createdby",    limit: 8,   null: false

      t.timestamps
    end
  end
end
