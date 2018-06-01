class Post < ApplicationRecord
    belongs_to :user

    validates :body, presence: true
    validates :body, length: {minimum: 2, maximum: 284}
end
