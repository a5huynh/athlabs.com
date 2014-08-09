---
title: i do science
last_updated: 09-03-2013

citations:
  -
    title: books/book chapters
    items:
      -
        title: Search and Discovery Through Human Computation
        publication: Handbook of Human Computation
        year: 2014
        authors: Lin, A. Y. &amp; Huynh, A.
        link:
          title: amazon
          href: //www.amazon.com/Handbook-Human-Computation-Pietro-Michelucci/dp/1461488052
  -
    title: conferences
    items:
      -
        title: Limitations of Crowdsourcing Using the EMS-1998 Scale in Remote Disaster Sensing
        publication: 2014 Aerospace Conference Proceedings
        year: 2014
        authors: Huynh, A.; Eguchi, M.; Lin, A. Y.; Eguchi, R.
      -
        title: Mobile Analysis of Large Temporal Datasets for Exploration and Discovery.
        publication: 2013 DigitalHeritage Conference Proceedings
        year: 2013
        authors: Huynh, A. &amp; Lin, A. Y.
      -
        title: Visual Analytics of Inherently Noisy Crowdsourced Data on Ultra High Resolution Displays
        publication: 2013 Aerospace Conference Proceedings
        year: 2013
        authors: Huynh, A., Ponto, K., &amp; Lin, A. Y.
        link:
          title: ieeexplore
          href: //ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=6497421
      -
        title: "Connecting the Dots: Triadic Clustering of Crowdsourced Data to Map Dirt Roads"
        publication: Proceedings of 21st International Conference on Pattern Recognition
        year: 2012
        authors: Huynh, A., &amp; Lin, A.
        link:
          title: ieeexplore
          href:  //ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=6460984
  -
    title: journals
    items:
      -
        title: "Crowdsourcing the Unknown: The Search for Genghis Khan"
        publication: Under Review
        authors: Lin, A., Huynh, A., Lanckriet, G., &amp; Barrington, L.
  -
    title: misc
    items:
      -
        title: Crowdsourcing and Its Application to Cultural Heritage
        publication: Research Exam for University of California, San Diego.
        year: 2013
        links:
          -
            title: pdf
            href: //github.com/a5huynh/research-exam/raw/master/paper/re.pdf
          -
            title: slides
            href: //github.com/a5huynh/research-exam/raw/master/presentation/research-exam.pdf
  - title: patents
    items:
      -
        title: Customer-controlled point-of-sale on a mobile device
        publication: US 8751316 B1
        authors: Jason Allen Fletchall, Dillon Campbell Compton, Kristina Lam Thai, Andrew Trung Huynh, Michael Harry Lintz
        year: 2014
        link:
          title: patent
          href: "http://www.google.com/patents/US8751316"
---

{% for citation in page.citations %}

## {{ citation.title }}
<ul class='citations'>
  {% for item in citation.items %}
    <li data-year='{{ item.year }}'>
        <div class='title'>{{ item.title }}</div>
        <div class='publication'>
            {{ item.publication }}
            {% if item.year %}
            <span class='year'>{{ item.year }}</span>
            {% endif %}
        </div>
        <div class='authors'>{{ item.authors }}</div>
        {% if item.link or item.links %}
        <div class='media'>
            {% if item.link %}
            <a href='{{ item.link.href }}'>{{ item.link.title }}</a>
            {% endif %}
            {% if item.links %}
              {% for link in item.links %}
                <a href='{{ link.href }}'>{{ link.title }}</a>
              {% endfor %}
            {% endif %}
        </div>
        {% endif %}
    </li>
  {% endfor %}
</ul>

{% endfor %}