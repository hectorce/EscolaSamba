class CreateQuesitos < ActiveRecord::Migration
  def change
    create_table :quesitos do |t|
      t.string :NomeQuesito
      t.integer :StatusQuesito

      t.timestamps
    end
  end
end
