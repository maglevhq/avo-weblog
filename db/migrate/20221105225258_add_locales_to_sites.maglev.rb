# This migration comes from maglev (originally 20211008064437)
class AddLocalesToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :maglev_sites, :locales, :jsonb, default: []
  end
end
