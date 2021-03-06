class Restaurant < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates_presence_of :name

  belongs_to :category

  has_many :comments

  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user
  
  def is_favorited?(user)
    self.favorited_users.include?(user)
  end


end