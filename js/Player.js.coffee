$ ->
  
  ###
  THE PLAYER CLASS
  Players have a number of things.
  They have total family members; they have in use family members.
  They have personal supplies. They have famyards.
  They have major improvements; They have the starting player potential property.
  They also hae a name.
  ###
  class window.Player
    
    # PROPERTIES
    # @username (the name of the player)
    personal_supply: {              # personal_supply is a 2d array. It holds all of the resources a person has
      wood:       []
      clay:       []
      stone:      []
      reed:       []
      grain:      []
      vegitable:  []
      food:       []
    }
    family_members_in_use:   0      # The number of family memebers currently being used to take actions
    family_members_total:    []     # The total number of family members a player has
    major_improvements:      []     # The array that holds each of the major improvement ojects TODO
    is_starting_player:      false  # This variable says if the player is the starting player
    farmyard: [                     # This is the farmyard: a 2d array that can hold pastures, stables, and rooms
      [null, null, null, null, null], 
      [null, null, null, null, null],
      [null, null, null, null, null]
    ]
    
    # THE CONSTRUCTOR METHOD
    # On instantiation, this sets the player's name, her initial personal and family members supply.
    constructor: ( username ) ->
      
      # Set the player's name.
      @username = username
      
      # Set up the initial personal supply.
      # Push two food into the personal supply.
      @personal_supply['food'].push new Resource 'food' for i in [0...3]
      
      # Set up the total family members array.
      # Push two new FamilyMember objects into the family_members_total array.
      # Then grow them up immediately
      @family_members_total.push new FamilyMember 0 for i in [0...2]
      
      # Create the inital two wooden rooms in the farmyard.
      @farmyard[0][4] = new Room "wood"
      @farmyard[1][4] = new Room "wood"
      
    # ADD RESOURCE METHO
    # This method adds n resources of a given type.
    add_resource: ( n, type ) ->
    
      # Push into the correct personal supply subarray n resources of type 'type'
      @personal_supply[type].push new Resource type for i in [0...n]
      
      
      