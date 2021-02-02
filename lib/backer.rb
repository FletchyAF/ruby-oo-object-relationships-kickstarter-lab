class Backer

    attr_accessor :name
    attr_reader

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        user_projects = ProjectBacker.all.find_all {|project| project.backer == self}
        return user_projects.collect {|element| element.project}
    end

end