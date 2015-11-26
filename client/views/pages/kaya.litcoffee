    Template.kaya.helpers
      cols: -> _(9).times ->
      rows: -> _(9).times ->

    Template.kaya.onCreated ->
      console.log 'created'

    Template.kaya.rendered = ->
      console.log 'just rendered'
      $('.board').click -> console.log 'clicked'
