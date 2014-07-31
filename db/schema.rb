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

ActiveRecord::Schema.define(version: 20140731152742) do

  create_table "clients", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_services", force: true do |t|
    t.integer  "client_id"
    t.integer  "part_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_services", ["client_id"], name: "index_order_services_on_client_id"
  add_index "order_services", ["part_id"], name: "index_order_services_on_part_id"
  add_index "order_services", ["service_id"], name: "index_order_services_on_service_id"

  create_table "parts", force: true do |t|
    t.string   "descricao"
    t.string   "modelo"
    t.string   "p_compra"
    t.string   "p_venda"
    t.integer  "quantidade"
    t.string   "lucro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "descricao"
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
