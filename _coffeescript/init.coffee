# Words used in the traits swapper code
short_words = [ 'Scientist', 'Designer', 'Dinosaur', 'Developer', 'Blogger', 
				'Stargazer', 'Hacker', 'Climber' ]

long_words  = [ 'Code Monkey', 'Caffeine Addict', 'Sarcastic Bastard', 
				'Aspiring Writer', 'Graduate Student', 'Guitar Player', 
				'Piano Player' ]

# Emoticon code
emoticons =
	smile:  '<img src="/static/img/emoticons/emote_smile.png" />'
	tongue: '<img src="/static/img/emoticons/emote_tongue.png" />'
	grin:   '<img src="/static/img/emoticons/emote_grin.png" />'

patterns =
	smile: 	/// =] ///
	tongue: /// =P ///
	grin:	/// =D ///

get_random_int = ( min, max ) ->
	Math.floor( Math.random() * ( max - min + 1 ) ) + min

change_short_word = () ->
	$( '#short_word' ).html( short_words[ get_random_int( 0, short_words.length - 1 ) ] + '.' )

change_long_word  = () ->
	$( '#long_word' ).html( long_words[ get_random_int( 0, long_words.length - 1 ) ] + '.' )

select_tab = ( tab ) ->
	if not tab? or tab.length == 0
		window.location.hash = '#heytheresexy'
		return

	# Mark this tab as selected, and remove the selection
	# class from the previous tab
	$( '.selected' ).removeClass 'selected'
	tab.addClass 'selected'
	
	# Make sure there is a "page" label to go to
	return if not tab.data( 'page' )?

	# Fade into the new info page
	new_page = '#' + tab.data( 'page' )
	$( '.inview' ).fadeOut( 'fast', () ->
		$( this ).removeClass( 'inview' )
		$( new_page ).fadeIn( 'fast' ).addClass( 'inview ' )
		@
	)

	# Mark this location
	window.location.hash = new_page

	@

$ ->
	setInterval change_short_word, 5000
	setInterval change_long_word, 7000

	if window.location.hash?
		select_tab( $( window.location.hash + '_tab' ) )
	
	$( '.ido' ).click( () ->
		select_tab( $( this ) ) if $( this ).data( 'page' ) != 'none'
		@
	)
	
	# Replace smileys with actual smiley icons!
	$( '.article' ).each( () -> 
		p_element = $( this )
		html = p_element.html()
		
		for key,val of patterns
			html = html.replace val, emoticons[ key ]
		
		p_element.html( html )
	)
	@