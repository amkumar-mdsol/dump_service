class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :age
      t.string :blood_group

      t.timestamps
    end
  end
end
