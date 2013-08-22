# Emoticon code
emoticons =
	smile:  '<img src="/static/img/emoticons/emote_smile.png" />'
	tongue: '<img src="/static/img/emoticons/emote_tongue.png" />'
	grin:   '<img src="/static/img/emoticons/emote_grin.png" />'

patterns =
	smile: 	/// =] ///
	tongue: /// =P ///
	grin:	/// =D ///

$ ->
	# Replace smileys with actual smiley icons!
	$( '.article' ).each( () ->
		p_element = $( this )
		html = p_element.html()

		for key,val of patterns
			html = html.replace val, emoticons[ key ]

		p_element.html( html )
	)