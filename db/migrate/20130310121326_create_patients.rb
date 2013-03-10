class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.belongs_to :doctor

      t.timestamps
    end
    add_index :patients, :doctor_id
  end
end
