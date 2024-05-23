class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6}
  validates :movie, uniqueness: { scope: :list }
  # validates :comment, uniqueness: true, if: -> { movie_id.list_id.present? }
end
