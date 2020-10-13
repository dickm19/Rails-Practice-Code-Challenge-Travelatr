class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    # def self.most_featured
    #     most_featured = self.all.map{|destination| destination.posts.count}.max
    #     destination = self.all.find {|destination| destination.posts.count == most_featured}
    # end

    def featured_post
        post_count = self.posts.map{|post| post.likes.count}.max
        post = self.posts.find {|post| post.likes.count == post_count}
    end

    def average_blogger_age
        ages = self.bloggers.uniq.map{|blogger| blogger.age}
        ages = ages.sum
        avg = ages/self.bloggers.uniq.count.to_f
        avg.round(2)
    end

    def five_recent_posts
        ordered = self.posts.all.order(created_at: :desc)
        ordered = ordered.limit(5)
    end
end
