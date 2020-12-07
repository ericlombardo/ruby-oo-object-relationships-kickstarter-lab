class Project
  attr_reader :title

  def initialize(title)
    @title = title  # starts with title of project
  end

  def add_backer(backer)  # creates new ProjectBacker instance and links project and backer
    new_backer = ProjectBacker.new(self, backer)
  end

  def backers #=> array of backer instances that have backed this project
    backer_list = ProjectBacker.all.select {|master_list| master_list.project == self}
    backer_list.map {|projects| projects.backer}
  end
end