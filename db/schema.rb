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

# For update files from DB
# bin/rake db:migrate RAILS_ENV=development

ActiveRecord::Schema.define(version: 20151109093141) do

  create_table "users_models", force: :cascade do |t|
    t.text    "name",        limit: 65535
    t.text    "description", limit: 65535
    t.integer "created_at",  limit: 4,     default: 0, null: false
    t.integer "updated_at",  limit: 4,     default: 0, null: false
  end

end
