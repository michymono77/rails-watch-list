class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 7 }, allow_blank: false
  validates :movie, presence: true, uniqueness: { scope: :list }
end
