class Heart < ApplicationRecord
  belongs_to :user  
  belongs_to :post

  validates :user_id, uniqueness: { scope: :post_id }
end

# not using any of the 'hearts' files. In model, controller, and views.