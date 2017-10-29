class User < ApplicationRecord
  CAPITALIZE_REGEX = /\A^[A-Z][-a-zA-Z]+$\Z/

  enum role: [:user, :vip,:admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable # to use custom validate this was comented

  validates :first_name, presence: true
  validates :first_name, :last_name, :city, format: { with: CAPITALIZE_REGEX }

  #validates_presence_of    :first_name, :on=>:create
  #validates_presence_of    :last_name, :on=>:create
  #validates_presence_of    :city, :on=>:create
  #validates_presence_of    :email, :on=>:create

  #validates_format_of :first_name, :with => /\A^[A-Z][-a-zA-Z]+$\Z/
  #validates_format_of :last_name, :with => /\A^[A-Z][-a-zA-Z]+$\Z/
  #validates_format_of :city, :with => /\A^[A-Z][-a-zA-Z]+$\Z/

end
