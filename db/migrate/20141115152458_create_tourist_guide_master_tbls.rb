class CreateTouristGuideMasterTbls < ActiveRecord::Migration
  def change
    create_table :tourist_guide_master_tbls do |t|
	    t.string   "tourist_secondary_name",                limit: 60, null: false
	    t.text     "tourist_secondary_description",                    null: false
	    t.integer  "tourist_secondary_height"
	    t.integer  "tourist_secondary_width"
	    t.integer  "tourist_secondary_distance_start_from"
	    t.integer  "tourist_secondary_distance_end_to"
	    t.integer  "tourist_secondary_depth"
	    t.integer  "fk_tourist_master_id",                             null: false
	    t.datetime "tourist_secondary_createddate",                    null: false
	    t.datetime "tourist_secondary_modifieddate"
	    t.integer  "tourist_secondary_createdby",           limit: 8,  null: false

      t.timestamps
    end
  end
end
