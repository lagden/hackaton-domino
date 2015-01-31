Guests.add()

Template.tabuleiro.helpers
	'players': ->
		Meteor.users.find()
