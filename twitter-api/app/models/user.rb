class User < ApplicationRecord
    has_many :posts

    validates :username, presence: true
    validates_uniqueness_of :username

    has_secure_password
    has_secure_token :api_token


    def to_s
        username
    end
end
