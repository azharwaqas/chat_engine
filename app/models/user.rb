class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  validates :name,
            presence: true
  validates :email,
            presence: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  has_many :conversations, :foreign_key => :sender_id , :dependent => :destroy
  after_create :send_welcome_email
  
  def send_welcome_email
    WelcomeMailer.new_user(self).deliver_later
  end          
end
