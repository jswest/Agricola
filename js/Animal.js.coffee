$ ->
  
  ###
  THE ANIMAL CLASS
  Every Animal has a type and a corresponding color.
  These are its only properties.
  ###
  class window.Animal
    
    # PROPERTIES
    # @type (AKA the animal's species)
    # @color (the color by which the animal is represented)
    
    # THE CONSRUCTOR METHOD
    # On instantiation, set the type (species) of the animal.
    # Then set its corresponding color.
    constructor: ( type ) ->
      
      # Set the type
      @type = type
      
      # These are the colors of the animals
      black = "rgb(0,0,0)"
      brown = "rgb(50,10,0)"
      white = "rgb(255,255,255)"
      
      # Now set the color based on type.
      # This should be self-commenting...
      if @type is "cattle"
        @color = black
        
      else if @type is "wild boar"
        @color = brown
        
      else if @type is "sheep"
        @color = white
        
      else
        console.log "Something has gone very, very wrong."