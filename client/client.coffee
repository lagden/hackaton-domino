Template.list_rooms.helpers
	'rooms': ->
		Rooms.find()

Template.list_rooms.events
	"click .btn-primary": (e) ->
		console.log e
