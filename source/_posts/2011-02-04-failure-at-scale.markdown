---
layout: post
status: publish
published: true
title: Failure at scale
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 158
wordpress_url: http://www.brunton-spall.co.uk/?p=158
date: '2011-02-04 14:01:16 +0000'
date_gmt: '2011-02-04 14:01:16 +0000'
categories:
- Featured
tags:
- Rant
- Web Development
- Performance
- Scalability
comments:
- id: 9
  author: Phillprice
  author_email: mrphillipprice@gmail.com
  author_url: ''
  date: '2011-02-04 18:24:00 +0000'
  date_gmt: '2011-02-04 18:24:00 +0000'
  content: Great analysis. Only one slight thing in that if they are hosting stuff
    at S3, it's e extremely difficult to gzip it, they should of course be using as
    much as they can, and they aren't! Nice article!
- id: 10
  author: Sym Roe
  author_email: ''
  author_url: http://twitter.com/symroe
  date: '2011-02-05 00:14:00 +0000'
  date_gmt: '2011-02-05 00:14:00 +0000'
  content: ! "I've said this before (on twitter, and I expect I'll end up blogging
    about it too); we still don't know if the maximun figure we're been told (18m
    'hits' per hour) includes the media (images/css/js) or if it's just hit to apache
    (and on to django). \n\nI strongly suspect it includes all requests to the servers
    they were in control of (S3 and EC2, excluding google).  If this is the case,
    there are 18 requests on the home page, one of them to apache.  \n\nThat translates
    to 277 hits per second, against static data.  I've set up a geodjango site on
    my laptop, and doing uncached random, uncached requests for points I can process
    about 80 requests per second, sustained for 300,000 requests.  That is with an
    untuned postgres server, and gunicorn as the django server with 4 workers.\n\nWith
    nothing more complex than a round robin proxy and a clone of this deployment,
    I would need 4 EC2 instances (each running their own database and web server)
    to sustain that load.\n\nAnd all that is before caching."
- id: 11
  author: Sym Roe
  author_email: ''
  author_url: http://twitter.com/symroe
  date: '2011-02-05 00:25:00 +0000'
  date_gmt: '2011-02-05 00:25:00 +0000'
  content: One other point – there are only 1.8m postcodes, so if there were 18m hits
    an hour to apache rather than over all media then there would be *many* duplicate
    searches per hour.
- id: 17
  author: ! 'The Technology newsbucket: Samsung&#8217;s numbers, Facebook&#8217;s
    falling video, police maps and more'
  author_email: ''
  author_url: http://www.itpowers.com/2011/02/08/the-technology-newsbucket-samsungs-numbers-facebooks-falling-video-police-maps-and-more/
  date: '2011-05-16 20:23:07 +0000'
  date_gmt: '2011-05-16 20:23:07 +0000'
  content: ! '[...] Police.uk: failure at scale &gt;&gt; Michael Brunton-SpallMichael
    Brunton-Spall, one of the developers who keeps the Guardian&#8217;s site running
    under big loads, analyses the police.uk site: &#8220;When I visit the crime maps
    website, the very first thing I see is a landing page that I can type my postcode
    into.  The HTML generated for this page must be the same for every user, so this
    page should be cached right?  Unfortunately, not only is this page uncached but
    it doesn&#8217;t return any cache headers, last modified or expires headers of
    any form.&#8221; It gets worse. Much worse. [...]'
- id: 101
  author: Art &amp; Design Inspiration
  author_email: ''
  author_url: http://spoon-graphics.co.uk
  date: '2013-07-17 03:15:56 +0000'
  date_gmt: '2013-07-17 03:15:56 +0000'
  content: ! '<p><strong>Hi...</strong></p>


    <p>I am often to blogging and i really appreciate your content. The article has
    really peaks my interest. I am going to bookmark your site and keep checking for
    new information....</p>

'
---
<p><img class="alignnone size-full wp-image-159" title="Police.uk website" src="http://www.brunton-spall.co.uk/wp-content/uploads/2011/02/Dashboard-‹-Michael-Brunton-Spall-—-WordPress.png" alt="Snap of the front page of police.uk" width="588" height="302" /><br />
When you launch a <a href="http://www.police.uk" target="_blank">high profile website</a>, it sometimes will <a href="http://www.guardian.co.uk/uk/2011/feb/01/crime-map-website-crashes" target="_blank">spectacularly fail</a> for reasons of scale.  Since this is an area of professional interest I thought I'd have a look to see whether there was anything obvious, and it was apparent that the developers didn't appear to think at scale (and still haven't fixed the issues).</p>
<p>When I visit the crime maps website, the very first thing I see is a landing page that I can type my postcode into.  The HTML generated for this page must be the same for every user, so this page should be cached right?  Unfortunately, not only is this page uncached but it doesn't return any cache headers, last modified or expires headers of any form.  The static files for this page do return a Last-Modified header, but I suspect that's because they are hosted on S3.  Of slight note is that the developers didn't obey any of the website performance rules, there is no gzip and there is multiple CSS/JS files rather than a combined file.</p>
<!--more-->
<p>Once I enter a postcode I get redirected to a dynamically generated page based on my post code.  Again there are no cache headers here, and since it's a dynamically generated page you might think it doesn't matter, but since the page is entirely javascript driven, this HTML is could be cached easily.  There are a few links that have the same query parameter passed to them, but again once you've decided to ban all non-javascript browsers you may as well rewrite those urls in the clients browser using javascript rather than server side.</p>
<p>Furthermore the data that is loaded by the javascript from /crime/radius which contains the crime data for my area, in monthly groups doesn't have any new data since 2010-12, not a huge suprise I'd assume these are quartaly data sets, but that means that json response should also have cache headers, and of course it doesn't.</p>
<p>In this case a cache wouldn't help with scale for multiple users, but would for returning users, because the developer has specified the area they are interested in by a long/lat that is accurate to 7 decimal places - an accuracy that should be down to the millimeter of so I believe (4 places gives you accuracy to 6-10 meters or so).  Since they've merely geolocated my postcode, accuracy that close is completely wasted and would destroy any cache that is there.  My postcode is probably a hundred meters or so in size, so having a long/lat that is more accurate than 2 or 3 decimal places is probably wasted.  Decreasing the accuracy of the center point could potentially give you less accurate data, but since what you are interested in is crimes within a 0.5 mile radius, you could simply increase the radius a bit and drop some of the outlying results in the clients browser, making for a much more scalable backend server.</p>
<p>At this point of the analysis I got just to depressed to even continue, it was clearly obvious that the developers had given very little thought as to how this website would scale.  I suspect that since it is hosted on Amazon's EC2 they figured they would scale by firing up new servers, but I contend that even at that 18m hits an hour (approx 4k a second) about 4 or 5 caches with good hit rates would have been able to serve most of the traffic without too much issue (I'd probably have suggested a cache warming for data for the major metropolises as well).</p>
<p>Remember kids, EC2 allows you to add new machines easily, but you still need to think about scale and performance when writing your application.  EC2 doesn't solve your scaling problems, it solves your capacity planning problems, you still need to build a site that scales without needed 1000's of servers.</p>
