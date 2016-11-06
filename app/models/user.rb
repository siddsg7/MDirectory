class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin, :doctor, :recruiter]
  after_initialize :set_default_role, :if => :new_record?
  has_many :posts
  has_many :certifications
  #has_attached_file :profile_picture, default_url: "assets/images/prof.png"

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
