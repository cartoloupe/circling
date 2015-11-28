    Template.board.helpers
      cells: -> Cells.find().fetch()

    Template.board.onCreated ->
      self = this
      self.autorun ->
        self.subscribe 'moves'
      console.log 'created and subscribed'

