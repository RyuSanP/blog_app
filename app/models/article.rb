class Article < ApplicationRecord
  belongs_to :user
  has_many :favorites

  validates :title, presence: true
  validates :content, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
