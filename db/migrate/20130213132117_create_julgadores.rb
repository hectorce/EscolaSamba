class CreateJulgadores < ActiveRecord::Migration
  def change
    create_table :julgadores do |t|
      t.string :NomeJulgador
      t.string :IndicacaoJulgador
      t.integer :StatusJulgador

      t.timestamps
    end
  end
end
