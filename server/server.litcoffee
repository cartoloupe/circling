    Meteor.startup ->
      Cells.remove({})
      _(9 * 9).times (i) ->
        Cells.insert({
          cell: i,
          state: 'empty'
        })
