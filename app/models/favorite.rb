class Favorite < ActiveRecord::Base
  belongs_to :favoritable, polymorphic: true
  belongs_to :user, inverse_of: :favorites

  validates :user_id, uniqueness: {
    scope: [:favoritable_id, :favoritable_type],
    message: 'can only favorite an item once'
  } 

  #Define scope to allow commands like the following
  # @user.favorites.artists
  # @user.favorites.songs
  scope :artists,  -> {where(favoritable_type: 'Artist')}
  scope :songs, -> {where(favoritable_type: 'Song')}

end
