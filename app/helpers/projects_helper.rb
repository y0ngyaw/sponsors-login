module ProjectsHelper
	def selected_project project
		@project = Project.find_by(id: project.id)
	end 

	def documentation_exist? project
		project.documentation?
	end 

end
