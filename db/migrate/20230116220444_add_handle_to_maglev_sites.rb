class AddHandleToMaglevSites < ActiveRecord::Migration[7.0]
  def change
    add_column :maglev_sites, :handle, :string
  end
end
