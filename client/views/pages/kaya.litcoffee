    Template.kaya.onCreated ->
      console.log 'created'

    Template.kaya.rendered = ->
      $('.board').click -> console.log 'clicked'
      $('.stone_pile').draggable()
      console.log 'just rendered'


    Template.stones.helpers
      startingStones: -> _(42).times ->
