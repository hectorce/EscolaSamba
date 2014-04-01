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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130527025607) do

  create_table "escolas", :force => true do |t|
    t.string   "NomeEscola"
    t.string   "PresidenteEscola"
    t.string   "MenbrosEscola"
    t.string   "Bandeiraescola"
    t.integer  "StatusEscola"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "julgadores", :force => true do |t|
    t.string   "NomeJulgador"
    t.string   "IndicacaoJulgador"
    t.integer  "StatusJulgador"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "notatt", :force => true do |t|
    t.decimal  "Nota1"
    t.decimal  "Nota2"
    t.decimal  "Nota3"
    t.decimal  "Nota4"
    t.decimal  "NotaMin"
    t.decimal  "NotaMax"
    t.decimal  "Total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notos", :force => true do |t|
    t.decimal  "Nota1"
    t.decimal  "Nota2"
    t.decimal  "Nota3"
    t.decimal  "Nota4"
    t.decimal  "NotaMin"
    t.decimal  "NotaMax"
    t.decimal  "Total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quesitos", :force => true do |t|
    t.string   "NomeQuesito"
    t.integer  "StatusQuesito"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
