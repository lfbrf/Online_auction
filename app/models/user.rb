class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable #, :validatable  to use custom validate this was comented
         validates_presence_of    :password, :on=>:create
  validates_confirmation_of    :password, :on=>:create
  validates_length_of    :password, :within => Devise.password_length, :allow_blank => true
validates_presence_of    :first_name, :on=>:create
validates_presence_of    :last_name, :on=>:create
validates_presence_of    :city, :on=>:create
validates_presence_of    :email, :on=>:create
validates :email, :uniqueness => { :case_sensitive => false } # validate if email is unique.
validates_format_of :first_name, :with => /\A^[A-Z][-a-zA-Z]+$\Z/
validates_format_of :last_name, :with => /\A^[A-Z][-a-zA-Z]+$\Z/
validates_format_of :city, :with => /\A^[A-Z][-a-zA-Z]+$\Z/
end
