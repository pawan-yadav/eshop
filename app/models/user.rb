class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  has_many :orders

  attr_accessor :login


  def login=(login)
    @login = login
  end

  def login
    @login || self.numeric_id || self.alternative_numeric_id || self.email
  end

	def self.find_for_database_authentication(warden_conditions)
	  conditions = warden_conditions.dup
	  if login = conditions.delete(:login)
	    where(conditions.to_h).where(["numeric_id = :value OR alternative_numeric_id = :value OR lower(email) = :value", { :value => login.downcase }]).first
	  elsif conditions.has_key?(:numeric_id) || (:alternative_numeric_id) || conditions.has_key?(:email)
	    where(conditions.to_h).first
	  end
	end
end
