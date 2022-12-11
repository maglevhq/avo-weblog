# This migration comes from maglev (originally 20220612092235)
class AddStyleToSites < ActiveRecord::Migration[6.1]
  def change
    change_table :maglev_sites do |t|
      t.jsonb :style, default: []
    end
  end
end
