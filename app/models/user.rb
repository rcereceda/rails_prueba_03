class User < ActiveRecord::Base
  before_save :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_songs
  has_many :songs, through: :user_songs

  enum role: [:guest, :basic]

  private
  def set_default_role
  	self.role ||= 1
  end
end
