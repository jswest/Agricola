$ ->
  
  ###
  THE DOM VARIABLES
  ###
  a = $('div#action-board')


  ###
  THE SET UP ACTION BOARD FUNCTION
  As you might guess from the name, this
  little guy sets up the action board.
  It defines all of the actions, then
  it appends them to the action board.
  ###
  window.set_up_action_board = () ->
    
    # Set the empty actions array.
    actions = []
    
    # Define the action "take 3 wood"
    take_3_wood = new Action(
      "Take 3 wood.", # The name
      0,              # The birthstage
      ( player ) ->   # The lambda
        player.add_resource( this.supply, 'wood' )
      3               # The resupply number
    )
    
    actions.push( take_3_wood )
    return actions
      