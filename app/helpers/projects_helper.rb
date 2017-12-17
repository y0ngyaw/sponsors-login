module ProjectsHelper
	def selected_project project
		@project = Project.find_by(id: project.id)
	end 

end
