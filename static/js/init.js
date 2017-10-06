// Words used in the traits swapper code
var short_words = [
  'Blogger',
  'Climber',
  'Designer',
  'Developer',
  'Dinosaur',
  'Engineer',
  'Hacker',
  'Scientist',
  'Stargazer'
];

var long_words  = [
  'Aspiring Writer',
  'Caffeine Addict',
  'Code Monkey',
  'Entrepreneur',
  'Guitar Player',
  'Hardware Hacker',
  'Piano Player',
  'Sarcastic Guy'
];

function get_random_int( min, max ) {
  return Math.floor( Math.random() * ( max - min + 1 ) ) + min;
}

function change_short_word() {
  $( '#short_word' ).html( short_words[ get_random_int( 0, short_words.length - 1 ) ] + '.' );
}

function change_long_word() {
  $( '#long_word' ).html( long_words[ get_random_int( 0, long_words.length - 1 ) ] + '.' );
}

$( function() {
  setInterval( change_short_word, 5000 );
  setInterval( change_long_word, 7000 );

  window.location.hash = '#heytherefriend';
});
