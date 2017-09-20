class Users < ApplicationRecord
  validates :email, presence: true, null: false, uniqueness: true

  has_many :submitted_urls,
    class_name: 'Shortenedurls',
    foreign_key: :user_id,
    primary_key: :id
end
