---
---

# Words used in the traits swapper code
short_words = [ 'Scientist', 'Designer', 'Dinosaur', 'Developer', 'Blogger',
                'Stargazer', 'Hacker', 'Climber' ]

long_words  = [ 'Code Monkey', 'Caffeine Addict', 'Sarcastic Bastard',
                'Aspiring Writer', 'Graduate Student', 'Guitar Player',
                'Piano Player' ]

get_random_int = ( min, max ) ->
    Math.floor( Math.random() * ( max - min + 1 ) ) + min

change_short_word = () ->
    $( '#short_word' ).html( short_words[ get_random_int( 0, short_words.length - 1 ) ] + '.' )

change_long_word  = () ->
    $( '#long_word' ).html( long_words[ get_random_int( 0, long_words.length - 1 ) ] + '.' )

$ ->
  setInterval( change_short_word, 5000 )
  setInterval( change_long_word, 7000 )

  window.location.hash = '#heytheresexy'
  @