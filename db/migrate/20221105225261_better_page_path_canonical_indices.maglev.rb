# This migration comes from maglev (originally 20211116161121)
class BetterPagePathCanonicalIndices < ActiveRecord::Migration[6.1]
  def change
    remove_index :maglev_page_paths, [:value, :locale], unique: true
    remove_index :maglev_page_paths, %i[canonical maglev_page_id locale], unique: true, name: 'canonical_uniqueness'
    add_index :maglev_page_paths, %i[canonical locale value], name: 'canonical_speed'
    add_index :maglev_page_paths, %i[canonical maglev_page_id locale value], unique: true, name: 'canonical_uniqueness'
  end
end
