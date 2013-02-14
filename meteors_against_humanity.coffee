BlackCards = new Meteor.Collection("black_cards")
WhiteCards = new Meteor.Collection("white_cards")

if Meteor.isClient
  Template.hello.greeting = ->
    "Welcome to meteors_against_humanity."

  Template.hello.events "click input": ->
    
    # template data, if any, is available in 'this'
    console.log "You pressed the button"  if typeof console isnt "undefined"

if Meteor.isServer
  Meteor.startup ->

# code to run on server at startup
