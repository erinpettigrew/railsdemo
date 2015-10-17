class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#each user has many reviews, and if a user is deleted then destroy their reviews
   has_many :reviews, dependent: :destroy
end
