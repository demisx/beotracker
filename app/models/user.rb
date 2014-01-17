# User model has a simple polymorphic association, 
# defining if it's a Graduate or an Employer.

class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  belongs_to :profile, polymorphic: true

  def type; end
end 
