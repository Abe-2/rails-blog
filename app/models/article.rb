class Article < ApplicationRecord
  include Visible

  # has_rich_text :content
  has_rich_text :body
  has_one_attached :header_image

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :header_image, presence: true

  has_many :comments, dependent: :destroy

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }
end
