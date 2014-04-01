class CreateNotos < ActiveRecord::Migration
  def change
    create_table :notos do |t|
      t.decimal :Nota1
      t.decimal :Nota2
      t.decimal :Nota3
      t.decimal :Nota4
      t.decimal :NotaMin
      t.decimal :NotaMax
      t.decimal :Total

      t.timestamps
    end
  end
end
