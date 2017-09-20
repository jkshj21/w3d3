class Shortenedurl < ApplicationRecord
  belongs_to :submitter,
    class_name: 'Users',
    foreign_key: :user_id,
    primary_key: :id

  def self.random_code
    loop do
      random_code = SecureRandom.urlsafe_base64(16)
      return random_code unless Shortenedurl.exists?(shorturl: random_code)
    end
  end

  def self.submit_url(user, longurl)
    Shortenedurl.create(longurl, random_code, user.id)
  end

  def num_clicks

  end

  def num_uniques

  end

  def num_recent_uniques

  end

end
