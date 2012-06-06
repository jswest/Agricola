$ ->
  # SET THE DOM VARIABLES
  h = $('h1#username')
  f = $('div#farmyard-board')
  a = $('div#action-board')
  
  # Make a new Player.
  p = new Player 'John'
  
  # Add his name to the DOM.
  h.html( "#{p.username}'s Farmyard" )
  
  # Set up the farmyard
  countery = 0
  for y in p.farmyard
    counterx = 0
    f.append("<div class='space-row' id='row#{countery}'></div>")
    g = $("#row#{countery}")
    for space in y
      g.append( "<div class='space' id='y#{countery}x#{counterx}'></div>" )
      if space
        $("#y#{countery}x#{counterx}").css( 'background-color', "#{space.color}" ) 
      counterx++
    countery++
  
  # Set up the action board
  actions = window.set_up_action_board()
  actioncounter = 0
  for action in actions
    a.append( "<div class='action' id='action#{actioncounter}'>#{action.name}</div>" )
    $("#action#{actioncounter}").click ->
      action.action( p )
    
    