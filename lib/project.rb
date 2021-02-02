class Project

    attr_accessor :title
    attr_reader

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.find_all {|backer| backer.project == self}
        return project_backers.collect {|element| element.backer}
    end

end