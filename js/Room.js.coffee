$ ->
  
  class window.Room
    
    # PROPERTIES
    # @type (if the room is wood, clay, or stone)
    # @color (the color that corresponds to the type)
    
    # THE CONSTRUCTOR METHOD
    # This sets the inital type of room and its corresponding color.
    constructor: ( type ) ->
      
      # Set the type of room.
      @type = type
      
      # The potential colors:
      brown = 'rgb(50,15,0)'
      red   = 'rgb(150,0,0)'
      grey  = 'rgb(100,100,100)'
      
      # Set the color.
      if @type is 'wood'
        @color = brown
      else if @type is 'clay'
        @color = red
      else if @type is 'stone'
        @color = grey
      else
        console.log "Something has gone very, very wrong."
    
    # THE RENOVATE TO METHOD
    # This renovates from an old type to a new type.
    # Once again, it changes the color, too.
    renovate_to: ( type ) ->
      
      # Set the new type of room.
      @type = type
      
      # The potential colors:
      brown = 'rgb(50,15,0)'
      red   = 'rgb(150,0,0)'
      grey  = 'rgb(100,100,100)'
      
      # Set the color.
      if @type is 'wood'
        @color = brown
      else if @type is 'clay'
        @color = red
      else if @type is 'stone'
        @color = grey
      else
        console.log "Something has gone very, very wrong."