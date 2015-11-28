    Template.kaya.helpers

    Template.kaya.onCreated ->
      self = this
      self.autorun ->
        self.subscribe 'moves'

    Template.kaya.rendered = ->
      $('.stone_pile').draggable()
      $('.cell-san').droppable
        drop: (event, ui) ->
          console.log event.target.id
          console.log ui
          console.log ui.draggable[0]
          window.thth = ui.draggable[0]
          stone = ui.draggable[0]
          state = 'empty'
          if stone.classList.contains('stone_pile__black')
            state = 'black'
          else
            state = 'white'
          id = {cell: parseInt(event.target.id)}
          doc = {state: state}
          Meteor.call('updateCell', [id, doc])
          ui.draggable.fadeOut 300, ->
            $(this).remove()

    Template.stones.helpers
      startingStones: -> _(42).times ->
