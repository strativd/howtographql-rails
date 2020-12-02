class Link < ApplicationRecord
  belongs_to :user, optional: true # Prevent ActiveRecord::RecordInvalid

  validates :url, presence: true, url: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }

  has_many :votes
end
