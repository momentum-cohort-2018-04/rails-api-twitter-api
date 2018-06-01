class Post < ApplicationRecord
    belongs_to :user

    validates :text, presence: true
    validates :text, length: {minimum: 2, maximum: 284}
end
