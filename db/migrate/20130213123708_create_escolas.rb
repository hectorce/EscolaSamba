class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.string :NomeEscola
      t.string :PresidenteEscola
      t.string :MenbrosEscola
      t.string :Bandeiraescola
      t.integer :StatusEscola

      t.timestamps
    end
  end
end
