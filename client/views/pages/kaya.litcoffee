    Template.kaya.helpers
      cols: -> _(9).times ->
      rows: -> _(9).times ->

    Template.kaya.onCreated ->
      console.log 'created'

    Template.kaya.rendered = ->
      $('.board').click -> console.log 'clicked'
      $('.stone_pile').draggable()
      console.log 'just rendered'


