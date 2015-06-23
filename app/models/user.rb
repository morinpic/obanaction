class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :created_events, class_name: 'Event', foreign_key: :owner_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
