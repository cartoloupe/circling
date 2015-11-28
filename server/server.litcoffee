    Meteor.startup ->
      Cells.remove({})
      _(9 * 9).times (i) ->
        Cells.insert({
          cell: i,
          state: 'empty'
        })

    Meteor.methods
      reset: ->
        Cells.update({}, {$set: {state: 'empty'}}, {multi: true})
