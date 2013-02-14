BlackCards = new Meteor.Collection("black_cards")
WhiteCards = new Meteor.Collection("white_cards")
Games      = new Meteor.Collection('game')
Players    = new Meteor.Collection('players')

if Meteor.isClient
  Template.black_card_listing.list_all_cards = (colour) ->
    BlackCards.find().fetch()

  Template.white_card_listing.list_all_cards = (colour) ->
    WhiteCards.find().fetch()

  Template.initial_screen.events
    "click #game_start": () ->
      console.log("game started")
      Games.insert({game_id: "123ABC"})

if Meteor.isServer
  Meteor.startup ->

# code to run on server at startup
