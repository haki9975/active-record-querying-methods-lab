class Show < ActiveRecord::Base
    def self.highest_rating
        Show.order(rating: :desc).limit(1)[0].rating
    end

    def self.most_popular_show
        Show.order(rating: :desc).limit(1)[0]
    end

    def self.lowest_rating
        Show.order(rating: :asc).limit(1)[0].rating
    end

    def self.least_popular_show
        Show.order(rating: :asc).limit(1)[0]
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
      show = []
        Show.find_each { |t| t.rating > 5 ? show << t : next }
      show       
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end