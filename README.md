# Ruby_Bootstrap_Project_Portfolio

This app will:
Create Projects and items inside their own project
Projects with the same title are not allowed
Implementation of "soft" deletes of projects and items. That is flag them as deleted in the database and hide them from the UI, but don't actually delete them from the database. a rake task added that outputs all projects and their todo items to the command line.
e.g
Project One
- [X] Todo Item 1
- [ ] Todo Item 2
- [ ] Todo Item 3

Project Two
- [ ] Todo Item 1
