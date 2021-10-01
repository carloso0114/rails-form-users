class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastName
      t.string :location
      t.string :job

      t.timestamps
    end
  end
end
