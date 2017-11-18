class Post < ApplicationRecord
  acts_as_votable
  # http://www.mattmorgante.com/technology/votable
  # https://github.com/ryanto/acts_as_votable

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :searches, dependent: :destroy

  validates :user_id, presence: true
  validates :image, presence: true
  # validates :caption, presence: true

  has_attached_file :image, styles: { :medium => "640" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # https://github.com/thoughtbot/paperclip

end
