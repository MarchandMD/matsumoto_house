crumb :root do
  link "Home", root_path
end

crumb :houses do
  link "Houses", houses_index_path
end

crumb :about do
  link "About", about_index_path
end

crumb :users do
  link "Users", users_path
end

crumb :employers do
  link "Employers", employers_path
end

crumb :events do
  link "Events", events_path
end

crumb :documentation do
  link "Documentation", documentation_index_path
end

crumb :resources do
  link "Resources", resources_path
end

crumb :collaboration do
  link "Collaboration", collaboration_index_path
end

crumb :contribute do
  link "Contribute", contribute_index_path
end
# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
