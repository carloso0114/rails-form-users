class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastName
      t.belongs_to :job
      t.belongs_to :location

      t.timestamps
    end
  end
end
