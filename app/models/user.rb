class User < ActiveRecord::Base
validates :name, presence: true, length: {minimum: 1, maximum: 40}
validates :email, presence: true, uniqueness: true
validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
