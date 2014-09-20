angular.module("Mac.Table").factory "hookableDirectiveController", [ ->
  class HookableDirectiveController
    constructor: (@scope, @element, @attrs) ->
      @_callbacks = []

    registerCallback: (callback) ->
      @_callbacks.push callback

    fireCallbacks: (args...) ->
      @_callbacks.forEach (callback) ->
        callback.apply null, args
]
