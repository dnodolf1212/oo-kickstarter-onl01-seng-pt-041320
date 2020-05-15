require 'pry'
class Backer
    attr_reader :name
    attr_accessor :backed_projects
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end 

    def back_project(project)
        #binding.pry 
        @backed_projects << project
        project.backers << self

        
    end 

end