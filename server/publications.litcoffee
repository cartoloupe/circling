# Publications

    Meteor.publish 'cells', ->
      criteria = {}
      options =
        sort:
          timeCreated: -1
      Cells.find criteria, options

