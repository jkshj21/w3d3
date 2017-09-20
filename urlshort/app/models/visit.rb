class Visit
  belongs_to :visitors,
    class_name: "Shortenedurl",
    foreign_key: :user_id,
    primary_key: :id

    belongs_to :visited_urls,
      class_name: "Users",
      foreign_key: :user_id,
      primary_key: :id

  def self.record_visit!(user, shortened_url)

  end
end
