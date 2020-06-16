class Post < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :body, presence: true
  enum privacy: %i[public_access private_access ]
end
