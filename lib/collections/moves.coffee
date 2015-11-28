@Cells = new Mongo.Collection 'cells'

Cells.allow
  update: (a,b,c,d) -> true

Meteor.methods
  updateCell: (iddoc) ->
    id = iddoc[0]
    doc = iddoc[1]
    cell = Cells.findOne(id)
    id2 = cell._id
    Cells.update(id2, {$set: doc})
