class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :account_belongs_to

      t.timestamps
    end
  end
end
