class Post < ApplicationRecord
  validates :title, presence: true

  has_one_attached :cover_photo

  has_rich_text :content

  def thumbnail_url
    return nil unless cover_photo.attached?
    Rails.application.routes.url_helpers.rails_blob_url(cover_photo, disposition: 'attachment')
  end
end
