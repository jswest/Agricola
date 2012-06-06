$ ->
  
  ###
  THE ACTION CLASS
  This class has two properties: a name and a birthstage.
  It also holds a proc for what the action does.
  ###
  class window.Action
    
    # PROPERTIES
    # @name (the name of the action, i.e. Take 1 Grain)
    # @birthstage (the stage in which this action appears, where 0 means from the beginning)
    # @action (a lambda that holds the actual action of this particular action sapce)
    supply: 0 # (the initial supply)
    # @restock_number (the number by which this supply is restocked--if it is restocked at all)
    
    # THE RESTOCK METHOD
    # This is declared before the constructor because js is silly.
    # Also, it adds the restock_number to the current supply.
    # It should only be called if there is, in fact, a restock number.
    # I think all hell would break loose if there weren't.
    restock: () ->
      @supply += @restock_number
          
    # THE CONSTRUCTOR METHOD
    # This sets the name, birthstage, action, and restock number properties.
    # It also restocks the supply (but only if there is a restock number).
    constructor: ( name, birthstage, action, restock_number ) ->
      
      # Set the name of the Action
      @name = name
      
      # Set the birthstage of the action
      @birthstage = birthstage
      
      # Set the action lambda of the action
      @action = action
      
      # Set the restock number
      @restock_number = restock_number
      
      # Restock the supply if there is a restock number
      @restock() if @restock_number
      

      