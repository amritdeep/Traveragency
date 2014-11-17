# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141115153911) do

  create_table "TouristGuideDescriptionTbl", primary_key: "tourist_description_id", force: true do |t|
    t.text     "tourist_description_description",            null: false
    t.datetime "tourist_description_createddate",            null: false
    t.datetime "tourist_description_modifieddate"
    t.integer  "tourist_description_createdby",    limit: 8, null: false
    t.integer  "fk_tourist_secondary_id",          limit: 8, null: false
  end

  create_table "TouristGuideImageTbl", primary_key: "tourist_image_id", force: true do |t|
    t.string   "tourist_image_name",         limit: 100, null: false
    t.integer  "fk_tourist_description_id",  limit: 8,   null: false
    t.datetime "tourist_image_createddate",              null: false
    t.datetime "tourist_image_modifieddate"
    t.integer  "tourist_image_createdby",    limit: 8,   null: false
  end

  create_table "TouristGuideMasterTbl", primary_key: "tourist_master_id", force: true do |t|
    t.string   "tourist_master_name",         limit: 60, null: false
    t.text     "tourist_master_description",             null: false
    t.datetime "tourist_master_createddate",             null: false
    t.integer  "tourist_master_createdby",    limit: 8,  null: false
    t.datetime "tourist_master_modifieddate"
  end

  add_index "TouristGuideMasterTbl", ["tourist_master_name"], name: "IX_TouristGuideMasterTbl", unique: true

  create_table "TouristGuideSecondaryTbl", primary_key: "tourist_secondary_id", force: true do |t|
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
  end

  create_table "brajeshes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sysdiagrams", primary_key: "diagram_id", force: true do |t|
    t.string  "name",         limit: 128, null: false
    t.integer "principal_id",             null: false
    t.integer "version"
    t.binary  "definition"
  end

  add_index "sysdiagrams", ["principal_id", "name"], name: "UK_principal_name", unique: true

  create_table "tests", force: true do |t|
    t.integer  "myid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourist_guide_description_tbls", force: true do |t|
    t.text     "tourist_description_description",            null: false
    t.datetime "tourist_description_createddate",            null: false
    t.datetime "tourist_description_modifieddate"
    t.integer  "tourist_description_createdby",    limit: 8, null: false
    t.integer  "fk_tourist_secondary_id",          limit: 8, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourist_guide_image_tbls", force: true do |t|
    t.string   "tourist_image_name",         limit: 100, null: false
    t.integer  "fk_tourist_description_id",  limit: 8,   null: false
    t.datetime "tourist_image_createddate",              null: false
    t.datetime "tourist_image_modifieddate"
    t.integer  "tourist_image_createdby",    limit: 8,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourist_guide_master_tbls", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourist_guide_secondary_tbls", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
