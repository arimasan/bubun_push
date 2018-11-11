class CreateFuncs < ActiveRecord::Migration[5.2]
  def change
    create_table :funcs do |t|

      t.timestamps
    end
  end
end
