class AddSiteableTo < ActiveRecord::Migration[7.0]
  change_table :maglev_sites do |t|
    t.integer :siteable_id
    t.string :siteable_type
  end

  add_index :maglev_sites, [:siteable_type, :siteable_id]
end
