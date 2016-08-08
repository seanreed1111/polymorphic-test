class User < ActiveRecord::Base
  has_many :favorites, inverse_of: :user

end
