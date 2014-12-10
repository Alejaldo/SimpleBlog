class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :comments
  has_one :profile
  has_many :votes
  has_many :articles, through: :votes
  has_many :comments, through: :votes
  has_many :profiles, through: :votes
end
