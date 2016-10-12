class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :forms
  has_many :understands
  mount_uploader :photo, PhotoUploader
  acts_as_followable
  acts_as_follower
end

