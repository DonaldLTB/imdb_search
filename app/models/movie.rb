class Movie < ApplicationRecord
  belongs_to :director

  searchkick
  # include PgSearch::Model
  # multisearchable against: [:title, :syllabus]

  # # include PgSearch::Model
  # pg_search_scope :search, # name it whatever you prefer
  #   against: [ :title, :syllabus ],
  #   associated_against: {
  #         director: [ :first_name, :last_name ]
  #       },
  #   using: {
  #     # tsearch = @@ prefix = will allow partial words
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
end
