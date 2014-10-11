class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
    has_and_belongs_to_many :courses
    validates :email, :username, uniqueness: true
    attr_accessor :login
end
