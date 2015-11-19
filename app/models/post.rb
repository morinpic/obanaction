class Post < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  validates :title, :body, presence: true
end
