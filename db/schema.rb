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

ActiveRecord::Schema.define(version: 20160114013250) do

  create_table "clauses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "document_id"
  end

  add_index "clauses", ["document_id"], name: "index_clauses_on_document_id"

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "has_clauses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clause_id"
    t.boolean  "seleccionada"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "has_clauses", ["clause_id"], name: "index_has_clauses_on_clause_id"
  add_index "has_clauses", ["user_id"], name: "index_has_clauses_on_user_id"

  create_table "has_documents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "has_documents", ["document_id"], name: "index_has_documents_on_document_id"
  add_index "has_documents", ["user_id"], name: "index_has_documents_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
