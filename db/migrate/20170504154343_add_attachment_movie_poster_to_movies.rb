class AddAttachmentMoviePosterToMovies < ActiveRecord::Migration[4.2]
  def self.up
    change_table :movies do |t|
      t.attachment :movie_poster
    end
  end

  def self.down
    remove_attachment :movies, :movie_poster
  end
end
