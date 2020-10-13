class Blogger < ApplicationRecord
    
    has_many :posts
    has_many :destinations, through: :posts
    has_many :likes
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    def most_liked_post
        post_count = self.posts.map{|post| post.likes.count}.max
        post = self.posts.find {|post| post.likes.count == post_count}
    end
end
