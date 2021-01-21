class User < ApplicationRecord
    has_many :reviews
    has_many :reservations
    has_secure_password
    validates_uniqueness_of :username, :case_sensitive => false
end
