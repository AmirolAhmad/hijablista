class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  extend FriendlyId #https://github.com/norman/friendly_id
  friendly_id :store_name, use: [:slugged, :finders, :history]

  validates :store_name, :uniqueness => { :case_sensitive => false }

  scope :admin, -> { where(admin IS TRUE) }
end
