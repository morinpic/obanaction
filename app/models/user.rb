class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :created_events, class_name: 'Event', foreign_key: :owner_id
  has_many :created_posts, class_name: 'Post', foreign_key: :owner_id

  has_attached_file :avatar,
                    :styles => {
                      :s  => "200x200#",
                      :m  => "400x400#",
                      :l  => "600x600#"
                    }

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
