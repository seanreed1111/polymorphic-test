class Artist < ActiveRecord::Base
  has_many :favorites, as: :favoritable
end
