@Rooms = new Mongo.Collection "rooms"

Common = new WeakMap
_p = (obj) ->
  if Common.has(obj) is false
    Common.set obj, {}
  return Common.get obj

buildPedras = ->
  pedras = []
  x = 0
  while x < 7
    y = 0
    while y < 7
      pedras.push [x, y]
      y++
    x++
  pedras

shuffle = (array) ->
  currentIndex = array.length
  while 0 != currentIndex
    randomIndex = Math.floor Math.random() * currentIndex
    currentIndex -= 1
    temporaryValue = array[currentIndex]
    array[currentIndex] = array[randomIndex]
    array[randomIndex] = temporaryValue
  array

class Domino
  constructor: ->
    _p(@).pedras = shuffle(buildPedras())

  getPedras: ->
    _p(@).pedras
