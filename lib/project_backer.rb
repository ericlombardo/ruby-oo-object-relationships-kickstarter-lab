class ProjectBacker # middle man for projects and backers
  attr_reader :project, :backer
  
  @@all = []  # captures all project backer combinations
  def initialize(project, backer)
    @project = project  # starts with project and backer
    @backer = backer
    @@all << self # pushes each instance to @@all
  end

  def self.all  # getter method for @@all
    @@all
  end
end