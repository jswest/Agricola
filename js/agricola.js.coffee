$ ->

  body = $('body')
  page = $('#page')
  content = $('#content')
  ps = $('ul#personal-supply')
  option_board = $('div#option-board')
  
  ps.draggable()
  
  # a prettier way of making a timeout
  delay = (ms, func) -> timeout(func, ms)

  # the item classes
  class Item
    display: (x) ->
      ps.append( "<li class='item' data-ps-order='#{x}'></li>" )
  
  class Food extends Item
    color: (div) ->
      div.css( 'background-color': 'white' )
  
  class Wood extends Item
    color: (div) ->
      div.css( 'background-color': 'brown' )
      
  class Clay extends Item
    color: (div) ->
      div.css( 'background-color': 'red' )
  
  class Reed extends Item
    color: (div) ->
      div.css( 'background-color': 'rgb(200,200,200)')
    
  class Stone extends Item
    color: (div) ->
      div.css( 'background-color': 'grey' )
      
  class Grain extends Item
    color: (div) ->
      div.css( 'background-color': 'yellow' )
  
  class Vegitable extends Item
    color: (div) ->
      div.css( 'background-colorå': 'orange' )
      
  # the player class
  class Player
    @food: [ new Food, new Food ]
    @wood: [ ]
    @clay: [ ]
    @reed: [ ]
    @stone: [ ]
    @grain: [ ]
    @vegetable: [ ]
    personal_supply: [@food, @wood, @clay, @reed, @stone, @grain, @vegetable]
    display: () ->
      ps.html("")
      counter = 0
      for array in @personal_supply
        if array.length > 0
          for item in array 
            item.display(counter)
            $('li.item').each ->
              if counter == $(this).data('ps-order')
                item.color( $(this) )
            counter++
  
  
  class Option
    display: (x) ->
      option_board.append("<div class='option' data-option-number='#{x}'>#{this.text}</div>")
  
  class BuildRoomsAndOrStables extends Option
    order: 0
    text: "Build Room(s) and/or Stable(s)"
    action: ( player, div ) ->
      div.click ->
        console.log "Build Room(s) and/or Stable(s) clicked"
    
  class StartingPlayerAndOrMinorImprovement extends Option
    order: 1
    text: "Starting Player and/or Minor Improvement"
    action: ( player, div) ->
      div.click ->
        console.log "Starting Player and/or Minor Improvement clicked"
    
  class TakeAGrain extends Option
    order: 2
    text: "Take One Grain"
    action: ( player, div ) ->
      div.click ->
        player.personal_supply[5].push( new Grain )
        player.display()
        
  class PlowAField extends Option
    order: 3
    text: "Plow One Field"
    action: ( player, div ) ->
      div.click ->
        console.log "Plow One Field clicked"
  
  class Occupy extends Option
    order: 4
    text: "Occupy"
    action: ( player, div ) ->
      div.click ->
        console.log "Occupy clicked"
    
  class DayLaborer extends Option
    order: 5
    text: "Day Labor for Two Food"
    action: ( player, div ) ->
      div.click ->
        console.log "Day Labor clicked"
    
  class ThreeWood extends Option
    @wood: []
    order: 6
    text: "Take #{@wood.length} Wood"
    refresh: () -> @wood.push( new Wood ) for i in [0..2]
    action: ( player, div ) ->
      div.click ->
        player.personal_supply[1].push( new Wood ) for wood in @wood
        @wood = []
      
    
  
  set_up_option_board = ( player ) ->
    options = [
      new BuildRoomsAndOrStables
      new StartingPlayerAndOrMinorImprovement
      new TakeAGrain
      new PlowAField
      new Occupy
      new DayLaborer
      new ThreeWood
    ]
    counter = 0
    for option in options
      option.display(counter)
      $('.option').each ->
        if counter is $(this).data('option-number')
          option.action( player, $(this) )
      counter++
      
    
      
  
  
  
  
  p = new Player
  p.display()
  set_up_option_board( p )
  
  
    
    