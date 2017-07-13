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

ActiveRecord::Schema.define(version: 20170713082559) do

  create_table "grades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "SeatNumber"
    t.string "Name"
    t.string "School"
    t.string "Section"
    t.string "DeptName"
    t.string "Arabic1"
    t.string "Arabic2"
    t.string "English1"
    t.string "English2"
    t.string "Flanguage2"
    t.string "Math1J"
    t.string "Math1T"
    t.string "Math1"
    t.string "History"
    t.string "Geography"
    t.string "Philosophy"
    t.string "Psychology"
    t.string "Economie"
    t.string "Statistics"
    t.string "EconomieAndStatistics"
    t.string "Chemistry"
    t.string "Biology"
    t.string "Geology"
    t.string "Math2J"
    t.string "Math2T"
    t.string "Math2M"
    t.string "Math2"
    t.string "Physics"
    t.string "Religion1"
    t.string "Religion2"
    t.string "National"
    t.string "ArabicHL"
    t.string "EnglishHL"
    t.string "GeographyHL"
    t.string "PhilosophyHL"
    t.string "BiologyHL"
    t.string "MathHL"
    t.string "TotalDegree"
    t.string "TotalDegreeAfterHL"
    t.string "NoOfFails"
    t.string "StudentType"
    t.string "StudentCase"
    t.string "OrderEgypt"
    t.string "OrderDept"
    t.string "OrderState"
    t.string "OrderSchool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
