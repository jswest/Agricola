$ ->
  
  ###
  THE FAMILY MEMBER CLASS
  A family member has a birthday (joy!) and
  the is_adult property. These are the only two.
  It also has the grow_up method, which makes it an adult.
  ###
  class window.FamilyMember
    
    # PROPERTIES
    # @birthday (an int that commemorates the round in which it was instantiated)
    # @is_adult (a boolean that tells you if it's an adult or a child)
    
    # THE CONSTRUCTOR METHOD
    # On instantiation, the family member object takes the current round (a number).
    # It also is not an adult when it's born, of course!
    constructor: ( round ) ->
      
      # Set the birthday
      @birthday = round
      
      # If its birthday is round 0 (if it was created on instantiation of a new player)
      # Then it's an adult; else it's a baby.
      if @birthday is 0
        @is_adult = true
      else
        @is_adult = false # It's a boy! Mazel tov!
      
    # THE GROW_UP METHOD
    # This tells the family member to grow up already!
    # It changes the @is_adult variable to true
    grow_up: () ->
      @is_adult = true
      
    