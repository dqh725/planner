class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :password
      t.string :phone
      t.string :description
      t.string :job

      t.timestamps null: false
    end
  end
end
