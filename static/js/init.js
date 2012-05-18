var change_long_word, change_short_word, emoticons, get_random_int, long_words, patterns, short_words;

short_words = ['Scientist', 'Designer', 'Dinosaur', 'Developer', 'Blogger', 'Stargazer', 'Hacker', 'Climber'];

long_words = ['Code Monkey', 'Caffeine Addict', 'Sarcastic Bastard', 'Aspiring Writer', 'Graduate Student', 'Guitar Player', 'Piano Player'];

emoticons = {
  smile: '<img src="/static/img/emoticons/emote_smile.png" />',
  tongue: '<img src="/static/img/emoticons/emote_tongue.png" />',
  grin: '<img src="/static/img/emoticons/emote_grin.png" />'
};

patterns = {
  smile: /=]/,
  tongue: /=P/,
  grin: /=D/
};

get_random_int = function(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
};

change_short_word = function() {
  return $('#short_word').html(short_words[get_random_int(0, short_words.length - 1)] + '.');
};

change_long_word = function() {
  return $('#long_word').html(long_words[get_random_int(0, long_words.length - 1)] + '.');
};

$(function() {
  setInterval(change_short_word, 5000);
  setInterval(change_long_word, 7000);
  $('.ido').click(function() {
    var new_page;
    if ($(this).data('page') === 'none') return;
    $('.selected').removeClass('selected');
    $(this).addClass('selected');
    new_page = '#' + $(this).data('page');
    $('.inview').fadeOut('fast', function() {
      $(this).removeClass('inview');
      $(new_page).fadeIn('fast').addClass('inview ');
      return this;
    });
    return this;
  });
  $('.article').each(function() {
    var html, key, p_element, val;
    p_element = $(this);
    html = p_element.html();
    for (key in patterns) {
      val = patterns[key];
      html = html.replace(val, emoticons[key]);
    }
    return p_element.html(html);
  });
  return this;
});
