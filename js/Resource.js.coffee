$ ->
  
  ###
  THE RESOURCES CLASSES
  Every resource has a type and a corresponding color.
  These are its only properties.
  ###  
  class window.Resource
    
    # PROPERTIES
    # @type (i.e. wood, grain, food, etc.)
    # @color (the color by which the resource is represented)
    
    # THE CONSTRUCTOR METHOD
    # On instantiation, set the type of the resource.
    # Then set its corresponding color.
    constructor: ( type ) ->
      
      # Set the type.
      @type = type 
      
      # These are the colors of resources:
      brown     =   "rgb(50,15,0)"
      red       =   "rgb(150,0,0)"
      black     =   "rgb(0,0,0)"
      white     =   "rgb(255,255,255)"
      yellow    =   "rgb(255,215,0)"
      orange    =   "rgb(265,165,0)"
      grey      =   "rgb(100,100,100)"   
      
      # Now set the color based on the type.
      # This should be self-commenting...
      if @type is "wood"
        @color = brown
        
      else if @type is "clay"
        @color = red
      
      else if @type is "stone"
        @color = black
      
      else if @type is "reed"
        @color = white
      
      else if @type is "grain"
        @color = yellow
      
      else if @type is "vegitable"
        @color = orange
      
      else if @type is "food"
        @color = grey
      
      else
        console.log "Something has gone very, very wrong."
    