class Movie < ActiveRecord::Base
    #create
    def self.create_with_title(text)
        Movie.create(title: text)
    end
    #read
    #first
    def self.first_movie
        self.all.first
    end
    #last
    def self.last_movie
        self.all.last
    end
    #count
    def self.movie_count
        self.all.count
    end
    #id
    def self.find_movie_with_id(id)
        self.all.find(id)
    end
    #attributes
    def self.find_movie_with_attributes(item)
        self.find_by(item)
    end
    #after 2002
    def self.find_movies_after_2002
        self.where('release_date > 2002')
    end
    ##update
    def update_with_attributes(att)
        self.update(att)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end
##delete
    def self.delete_by_id(id)
        self.destroy_by(id: id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end