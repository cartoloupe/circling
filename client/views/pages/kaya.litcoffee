    Template.kaya.helpers

    Template.kaya.onCreated ->
      self = this
      self.autorun ->
        self.subscribe 'cells'

    Template.kaya.rendered = ->
      $('.stone_pile').draggable()

    Template.stones.helpers
      startingStones: -> _(42).times ->
