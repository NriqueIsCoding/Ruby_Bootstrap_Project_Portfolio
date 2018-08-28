namespace :myspace do
  desc "Project and Items"
  task mytask: :environment do

    #getting all projects from DB
    project = Project.all

    #loop through all projects
    for p in project
      puts p.title
      #loop through all items on each project
        for i in p.items.all
            if i.done == false
              puts "- [ ]  #{i.action}"
            else
              puts "- [X]  #{i.action}"
            end
        end
        print "\n"
      end
    end

end
