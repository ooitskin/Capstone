class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :user_name, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :hearts, dependent: :destroy

      # creates a new heart row with post_id and user_id
    def heart!(post)
      self.hearts.create!(post_id: post.id)
    end

    # destroys a heart with matching post_id and user_id
    def unheart!(post)
      heart = self.hearts.find_by_post_id(post.id)
      heart.destroy!
    end

    # returns true of false if a post is hearted by user
    def heart?(post)
      self.hearts.find_by_post_id(post.id)
    end
end
