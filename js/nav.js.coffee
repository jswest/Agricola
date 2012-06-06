$ ->
  
  ###
  THE PRIMARY NAV WRAPPER
  ###
  # DOM variable
  pnw   =   $('div#primary-nav-wrapper')
  
  # Bring it in
  pnw_in = ( callback ) ->
    pnw.animate(
      'width': '0'
      500
      ->
        pnw.removeClass( 'out' )
        pnw.addClass( 'in' )
        callback() if callback
    )
  
  # Extend it out
  pnw_out = ( callback ) ->
    pnw.animate(
      'width': '160'
      500
      ->
        pnw.removeClass( 'in' )
        pnw.addClass( 'out' )
        callback() if callback
    )
  
  
  ###
  THE PRIMARY NAV CONTROL
  ###
  pnc   =   $('nav#primary-nav-control')
  
  
  ###
  THE PRIMARY MENU
  ###
  
  # DOM variable
  pm    =   $('ul#primary-menu')
  
  # Bring it in
  pm_in = () ->
    pm.slideToggle(
      500
      ->
        pm.removeClass( 'out' )
        pm.addClass( 'in' )
    )
    
  # Extend it out
  pm_out = () ->
    pm.slideToggle(
      500
      ->
        pm.removeClass( 'out' )
        pm.addClass( 'in' )
    )
    
  plis  =   pm.children('li')
  
  
  
  pnc.click ->      
    if pnw.hasClass( 'in' )
      pnw_out( pm_out() )
    else if pnw.hasClass( 'out' )
      pm_in( pnw_in() )
      
    # Else something has gone very wrong
    else
      console.log "Something has gone very, very wrong"
  
  
  
  pnw.draggable()
  
  plis.click ->
    
    if $(this).attr( 'id' ) is 'see_action_board'
      # do something
    
    else if $(this).attr( 'id' ) is 'see_own_board'
      # do something
    
    else
      console.log "Something has gone very, very wrong."