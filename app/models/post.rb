class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination
    has_many :likes
    validates :content, length: {minimum: 100}
    validates :title, presence: true
end
