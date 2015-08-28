class Micropost < ActiveRecord::Base
    
    belongs_to :user
    
    mount_uploader :image, ImageUploader
    
    default_scope -> { order('created_at DESC') }   #スコープの指定、新しいものから順に（降順）
    validates :content, presence: true, length: { maximum: 140 }
    validates :image, presence: true
    validates :user_id, presence: true
    
    def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
