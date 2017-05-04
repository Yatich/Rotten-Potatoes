class Movie < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	has_many :reviews

    has_attached_file :movie_poster, styles: { movie_index: "300x300>", movie_show: "500x500>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :movie_poster, content_type: /\Aimage\/.*\z/

end
