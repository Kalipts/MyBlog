# $(document).on 'turbolinks:load', ->
#   sortable('.sortable')

ready = undefined
ready = ->
  sortable('.sortable')
  return
$(document).ready ready
