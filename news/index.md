---
title: me in the news
last_updated: 08-09-2014

clippings:
  -
    year: 2014
    items:
      -
        title: 500 Startups Accelerator Announces Its Tenth Batch Of Companies
        link: "http://techcrunch.com/2014/08/06/500-startups-accelerator-announces-its-tenth-batch-of-companies/"
        publication: Techcrunch
      -
        title: Code For America Announces Five Companies For Accelerator Program
        link: "http://techcrunch.com/2014/07/10/code-for-america-announces-five-companies-for-accelerator-program/"
        publication: Techcrunch
      -
        title: Crowdsourcing a Living Map of World Health
        link: "http://www.jacobsschool.ucsd.edu/news/news_releases/release.sfe?id=1470"
        publication: UCSD CSE Department News
  -
    year: 2013
    items:
      -
        title: Qualcomm Institute Joins World Cultural Leaders at Digital Heritage International Congress
        link: "http://calit2.net/newsroom/article.php?id=2281"
        publication: Calit2 News Release
      -
        title: With 'Cool Gizmo,' Research Team Hopes Citizen-Sensors Will Improve World Health
        link: "http://calit2.net/newsroom/release.php?id=2278"
        publication: Calit2 News Release
      -
        title: "Ph.D. Student Leads Data Effort in Personal and Environmental Health Monitoring Initiative"
        link: "http://cse.ucsd.edu/node/2391"
        publication: UCSD CSE Department News
      -
        title: "Calit2 Research Scientist Albert Lin Teams with TopCoder, NASA"
        link: "http://www.calit2.net/newsroom/release.php?id=2226"
        publication: Calit2 News Release
  -
    year: 2012
    items:
      -
        link: "http://calit2.net/newsroom/release.php?id=2074"
        title: "Calit2 Distributed Health Lab: Bringing Power of Prevention and Diagnosis to the People"
        publication: Calit2 News Release=
      -
        link: "https://www.uplinq.com/mobile-codefest"
        title: Qualcomm CodeFest Winners
        publication: Qualcomm Developer Network
      -
        link: "http://www.ece.ucsd.edu/node/2714"
        title: 2012 NSF IGERT Poster &amp; Video Competition Winner
        publication: UCSD ECE Department News
      -
        link: "http://cse-ece-ucsd.blogspot.com/2012/05/vote-for-cse-grad-student-andrew-huynh.html"
        title: Vote for CSE grad student Andrew Huynh and the search for Genghis Khan's Tomb
        publication: UC San Diego's Jacobs School of Engineering
  -
    year: 2011
    items:
      -
        link: "http://developer.yahoo.com/blogs/ydn/posts/2011/09/yahoo-open-hack-all-stars-in-new-york-city/"
        title: Yahoo! Open Hack All Stars in New York City
        publication: Yahoo! Developer Network
      -
        link: "http://www.igert.org/announcements/167"
        title: First IGERT Trainee Returns from Field Expedition
        publication: IGERT Announcements
      -
        link: "http://exploration.nationalgeographic.com/mongolia/content/21st-century-approach-ground-surveying"
        title: 21st Century Approach to Ground Surveying
        publication: National Geographic Exploration
      -
        link: "http://ucsdnews.ucsd.edu/newsrel/general/05-19-11FridgeHack.asp"
        title: "'What's In My Fridge' Hack Wins Top Prize at Yahoo! Competition"
        publication: UCSD News
      -
        link: "http://www.jacobsschool.ucsd.edu/news/news_releases/release.sfe?id=1070"
        title: Food in the fridge hack wins top prize at Yahoo! competition
        publication: Jacob's School News
      -
        link: "http://theaggie.org/article/2011/06/01/smart-fridge-improves-kitchen-experience"
        title: Smart fridge improves kitchen experience
        publication: The Aggie
  -
    year: 2010
    items:
      -
        link: "http://www.jacobsschool.ucsd.edu/news/news_releases/release.sfe?id=944"
        title: Yahoo! Hack U a hit at UC San Diego
        publication: Jacob's School News
  -
    year: 2009
    items:
      -
        link: "http://www.jacobsschool.ucsd.edu/news/news_releases/release.sfe?id=817"
        title: UC San Diego Engineering Students Create 'Wall of Widgets' for Mobile Internet
        publication: Jacob's School News

---

A bunch of links to reputable news sources about me or various things I have done.
Articles are in reverse chronological order.

{% for clip in page.clippings %}
<h2>{{ clip.year }}</h2>
<ul class='news_clippings'>
  {% for item in clip.items %}
  <li>
    <a href='{{ item.link }}'>{{ item.title }}</a>
    <div class='caption'>{{ item.publication }}</div>
  </li>
  {% endfor %}
</ul>
{% endfor %}