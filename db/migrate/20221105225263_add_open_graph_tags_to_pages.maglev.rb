# This migration comes from maglev (originally 20211203224112)
class AddOpenGraphTagsToPages < ActiveRecord::Migration[6.1]
  def change
    change_table :maglev_pages do |t|
      t.jsonb :og_title_translations, default: {}
      t.jsonb :og_description_translations, default: {}
      t.jsonb :og_image_url_translations, default: {}
    end
  end
end
