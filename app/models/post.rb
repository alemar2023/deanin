class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6 , maximum: 100}
  belongs_to :user
=begin
  def oncreate
    Post.destroy_all
  end
=end
end
