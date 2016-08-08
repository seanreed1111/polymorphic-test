class Song < ActiveRecord::Base
  has_many :favorites, as: :favoritable
end
