class Backer
  attr_reader :name

  def initialize(name)
    @name = name  # start with backer name
  end

  def back_project(project) # creates ProjectBacker instance and links project and backer
    new_project = ProjectBacker.new(project, self)
  end

  def backed_projects #=> array of projects that the backer has backed
    project_matches = ProjectBacker.all.select {|project| project.backer == self}
    project_matches.map {|project_match| project_match.project}
  end
end