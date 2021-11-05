#!/usr/bin/env ruby

# Rubi uses MVC web architecture
# It has a Model that communicates with the database
#..it has a controller that talks between the 
#..browser the model and the view
#.. It also has a view that communicates between
#..Browser and Controller 

# The Model and Database may not engage in every operation
#..However the Browser-View-Controller triangle is much 
#..more active and always essential

Now we will create a controller 

# If we insert the following command on terminal
#..ruby will tell us what are the things it can 
#..generate for us
rails g  
# To generate a controller use
rails generate controller Demo index
# The Controller name must be either CamelCase or
#.. underscored 
# It also needs a list of views as arguments
# In the above Demo is the name of the controller
# And the index is the list of views 

# Once the controller is created, we can view it on the 
#.. controller folder of our project. it is under the 
#..App folder

# On the folder we can see that it created a class called
#..DemoController that inherits from a class called ApplicationController
#..We can also see that it has a method called "index" which is our
#..views

# When a method is found inside a controller it is called
#.. an "Action"


# For now we will add a code snippet like this 
#.. We just added <layout false>

class DemoController < ApplicationController
  
  layout false 

  def index
  end
end

# Now if we inspect the "Views" folder we can see
# That it contains folder layouts and under demo folder
#..it has a file called "Index.html.erb"
#.. It is in HTML and That is our view

# If we add something to this file it will be reflected

# Under the config folder we can see that we have a file
#..called route which has "get 'demo/index'" which
#..is essentialy calling the html file and generating the view


# Route sends the request to the controller
# Controller usually has an action and it will do
#.. whatever action is defined and then it will render the view




