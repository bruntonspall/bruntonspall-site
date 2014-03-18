---
layout: post
status: publish
published: true
title: ! 'Packaging and deploying python web apps '
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 125
wordpress_url: http://www.brunton-spall.co.uk/?p=125
date: '2011-01-26 21:30:51 +0000'
date_gmt: '2011-01-26 21:30:51 +0000'
categories:
- Technical
- Rants
tags:
- Python
- WSGI
- deployment
comments:
- id: 5
  author: Tweets that mention Packaging and deploying python web apps -- Topsy.com
  author_email: ''
  author_url: http://topsy.com/www.brunton-spall.co.uk/post/2011/01/26/packaging-and-deploying-python-web-apps/?utm_source=pingback&amp;utm_campaign=L2
  date: '2011-01-27 17:02:10 +0000'
  date_gmt: '2011-01-27 17:02:10 +0000'
  content: ! '[...] This post was mentioned on Twitter by I''m tama, Bitch., Michael
    Brunton-Spal. Michael Brunton-Spal said: Hmm, didn''t auto tweet: Blogged this
    - http://www.brunton-spall.co.uk/post/2011/01/26/packaging-and-deploying-python-web-apps/
    [...]'
- id: 6
  author: Heikki Toivonen
  author_email: hjtoi@comcast.net
  author_url: http://heikkitoivonen.net/blog
  date: '2011-01-31 17:39:00 +0000'
  date_gmt: '2011-01-31 17:39:00 +0000'
  content: ! 'It is possible to point easy_install to a local directory for dependencies,
    and tell it to not download anything. For example, you could do something like
    this (from memory, don''t have my env at hand currently):


    easy_install --find-links=file:///my/local/package/dir --allow-hosts=127.0.0.1
    --always-unzip mypackage'
- id: 7
  author: Robbie Clutton
  author_email: ''
  author_url: http://twitter.com/robb1e
  date: '2011-02-04 06:52:00 +0000'
  date_gmt: '2011-02-04 06:52:00 +0000'
  content: Question, how do you install software via yum if the production machine
    isn't connected to the internet? A repository that's on the network maybe? Perhaps
    there's an python repository that could behave the same way?
- id: 8
  author: bruntonspall
  author_email: michael@brunton-spall.co.uk
  author_url: ''
  date: '2011-02-04 10:16:21 +0000'
  date_gmt: '2011-02-04 10:16:21 +0000'
  content: ! 'So this is true, we could use a production blessed repository of python
    packages and instruct pip to use this, which isn''t terribly difficult, and is
    indeed exactly what we do for our production yum repositories.  That does add
    extra architecture needed, and we need to maintain that repository and it''s associated
    packages (which we need to do for yum for security patches to system software).

    Again I''ll point out that in Java I simple package my jars into a libs directory
    and it just works, I want something that simple for python.'
- id: 13
  author: Nic Ferrier
  author_email: nferrier@ferrier.me.uk
  author_url: http://twitter.com/nicferrier
  date: '2011-02-22 12:22:00 +0000'
  date_gmt: '2011-02-22 12:22:00 +0000'
  content: ! 'You might want to look at veh - http://pypi.python.org/pypi/veh/0.76


    veh manages dependancies a bit like maven does for java. it''s really just a simple
    wrapper for virtualenv that lets'' you consolidate the dependancies sensibly on
    a per project basis.


    you can isolate your servers and remove any need for compilers and stuff by also
    using a local pypi mirror, such as chishop - https://github.com/ask/chishop. install
    in a dmz from your production envronment, upload binaries of your packages and
    then point your servers (via pypi configs) at that.


    or you could alter chishop a little to let you upload packages to it in batch.'
- id: 19
  author: Shrav Verma
  author_email: shrav.verma@gmail.com
  author_url: ''
  date: '2011-06-08 11:57:00 +0000'
  date_gmt: '2011-06-08 11:57:00 +0000'
  content: ! ' please we dont need stories. make ur note precise and understandable
    !

'
- id: 23
  author: LeePhD
  author_email: a2188772@nepwk.com
  author_url: ''
  date: '2011-08-30 20:47:00 +0000'
  date_gmt: '2011-08-30 20:47:00 +0000'
  content: wah wah wah... thats all i hear
- id: 31
  author: Francesco Occhipinti
  author_email: francesco.occhipinti@buongiorno.com
  author_url: ''
  date: '2012-01-04 13:03:00 +0000'
  date_gmt: '2012-01-04 13:03:00 +0000'
  content: ! '<p>The --relocatable option in virtualenv seems to go towards your direction.
    In my company we are facing similar issues (integrating python deployment with
    artifactory) and we are trying to cope it using "mock" in order to replicate destination
    server''s environment while building</p>

'
- id: 47
  author: Kristian Glass
  author_email: disqus@doismellburning.co.uk
  author_url: http://www.doismellburning.co.uk/
  date: '2012-09-07 13:31:00 +0000'
  date_gmt: '2012-09-07 13:31:00 +0000'
  content: ! '<p>Don''t suppose you got anywhere with this did you? It''s 18 months
    on and this article pretty much word for word describes my experiences...</p>

'
- id: 125
  author: canada online payday loans
  author_email: ''
  author_url: http://www.youtube.com/watch?v=JDYWtzP3Jxo
  date: '2013-12-30 23:09:26 +0000'
  date_gmt: '2013-12-30 23:09:26 +0000'
  content: ! '<p><strong>long term payday loans online</strong></p>


    <p>You Should Write It To Make The Best Use Of Keywords Without Being Obvious</p>

'
- id: 127
  author: payday loans vancouver
  author_email: ''
  author_url: http://www.yelp.ca/biz/mr-payday-easy-loans-inc-vancouver
  date: '2013-12-31 19:14:43 +0000'
  date_gmt: '2013-12-31 19:14:43 +0000'
  content: ! '<p><strong>bad credit online payday loans</strong></p>


    <p>Your Female Dog Will Squat Down And Put All Of Her Urine In One Spot</p>

'
---
<p><!-- p, li { white-space: pre-wrap; } --><!--StartFragment-->I love python.  I have really started to get into python in a big way since I was a beta tester for <a href="http://code.google.com/appengine/">Google's App Engine</a>, and I've used it for a number of production projects now.  It is probably my go to quick language.</p>
<p>Unfortunately I started my career programming C and C++ and moved onto Java, which is the primary language where I work.</p>
<p>I could say a number of bad things about Java, from it's "Enterprise" mentality, to its love affair with XML in all of it's most horrid incarnations, but the best thing about Java is the ease of deployment of a web application.</p>
<p>You see I am a fairly simple guy, I like my life easy and uncomplicated (or pragmatic if you prefer), and one of the things that Java gives me is a simple standard for a web application.  I put all of my compiled class files into the classes directory, add the binary library files to the lib directory, add a web.xml file in the WEB-INF directory and zip it up and rename it to a war file (or I use a tool that does that for me, like <a href="http://maven.apache.org/">Maven</a>, <a href="http://ant.apache.org/">Ant</a> or <a href="http://code.google.com/p/simple-build-tool/">sbt</a>).</p>
<p>This process is so simple that I can do it reliably, repeatably and I can even configure my <a href="http://www.jetbrains.com/teamcity/">continuous integration</a> server to do it for me.  Now I don't even have to worry about the process, I just commit my files and I get a war file uploaded into my artifact repository.</p>
<p>Tonight I struggled for hours to get a simple python web application uploaded and running on a web server.</p>
<p>Part of the problem is that I'm (thanks to an awesome web systems team) stringent about the security of our frontend servers.  I have three simple rules for them,</p>
<ol>
<li>they cannot access the internet</li>
<li>they cannot access internal services that are for development</li>
<li>they cannot have compilers / utilities on them</li>
</ol>
<p>This means that god forbid that somebody gets shell access on one of our servers, they are unable to download a rootkit (no internet access), they can't springboard out to internal services (no ssh or http access), and they can't compile tools that could help bypass our security (no C compiler).</p>
<p>I don't really think these rules are unreasonable, they are somewhat strict, but they have perfectly reasonable foundations and I'm very loath to break them.</p>
<p>So how does this work for Java web apps?</p>
<p>When it comes to my java webapps, my deployment process is fairly simple.</p>
<p>We run our deployment from a springboard machine, and the script does the following:</p>
<ol>
<li>Downloads the build artifact from our continueos integration machine and unzips it into a temporary directory</li>
<li>Finds SQL scripts, pre-run scripts etc and run them (against the database say)</li>
<li>copies the war file from the temp directory onto the app server</li>
<li>restarts the app server (assuming we're not hot-deploying which I've never got to work successfully)</li>
</ol>
<p>When I came to my nice little WSGI python app, I wanted to do essentially the same thing, but the problem was that every tool in my python toolbox wants to break one or more of my security rules.</p>
<p>On my local dev box I use <a href="http://pip.openplans.org/#">pip</a> and <a href="http://virtualenv.openplans.org/">virtualenv</a> and <a href="http://morethanseven.net/2009/07/27/fabric-django-git-apache-mod/wsgi-virtualenv-and-p.html">so</a> <a href="http://www.saltycrane.com/blog/2009/05/notes-using-pip-and-virtualenv-django/">should</a> <a href="http://www.b-list.org/weblog/2008/dec/15/pip/">you</a>.  This means I have a handy requirements.txt that details everything that is needed to run the program.  Pip by default downloads all of it's files from the global pypi, or with some magic options from a local pypi, and there appears to be no way to package up the files that it downloaded (but see <a href="http://pip.openplans.org/#bundles">pip bundles</a> - note the not stable yet).</p>
<p>Instead the recommendation for pip and virtualenv everywhere that I can find is to run virtualenv and pip on your production servers.</p>
<p>In all cases that requires either  breaking rule 1 or 2 as pip needs to download the files from either the internet (the pypi server), or from an internal pypi server (which is for development).  Now I'd be willing to shift a little on rule 2, it's the one with the least significant security implications, but no, pip seems to insist on breaking rule 3 as well.</p>
<p>When my project requires a python library that happens to be implemented natively (which a significant number do), it needs a C compiler on the machine... on my production web server machine, and I absolutely wont budge on that requirement.</p>
<p>So now I start to look at other options, remember that my requirement here is essentially that I have some code that depends on some libraries and I'd like to build a single deployable artifact that my servers can pick up which has everything on the same python path.</p>
<p>I'd really rather not install those libraries system wide because we install multiple applications on a single machine and I don't want to deal with the inevitable conflicts when an application needs a newer version of the library, thats the whole point of virtualenv right?</p>
<p>So my next step is to start trying to get an egg for each of my dependencies.  At this point I've already got quite cross and I've managed to get my Java head on.  "All I want to to put each egg in a lib directory and add lib to the python path and it should all work" I exclaim with a little bit of extra swearing.  Unfortunately this turns out to be a big mistake since Egg files are a nasty hack that easy_install created and has stuck around.  The very patient people on #pip politely remind me that it is in fact simple when I exclaim "This seems very complicated, I just want some damn egg's on my path", "It isn't complicated, don't use eggs".  Damn, that's me scuppered then.</p>
<p>So I finally decide on the hackiest of the hack solutions, on our build server, after I have checked out our code, created my virtualenv, pip installed the requirements and run the tests I am going to zip up the ve directory and use that as part of the deployable artifact.  Everything in my body is telling me this is wrong, I've got a zip file that contains bin/python2.6 and lib/python2.6/types.py as well as my dependencies, but shockingly it seems to work, I deploy my artifact, log onto the app server and run bin/python2.6 and try importing my requirements and sure enough it works, except of course that it doesn't as a web app.</p>
<p>It turns out that when the server starts up my wsgi file, the virtualenv is not on the python path.  A significant amount of hacking and swearing later and I've got the wsgi script manually using the site module to add the virtualenv directories to the path, and we're off, except of course we aren't.</p>
<p>At this point I may have elapsed into incoherent swearing for a bit (I wish I was more like <a href="http://en.wikipedia.org/wiki/The_Thick_of_It">Malcom Tucker</a> whose swearing is always <a href="http://www.guardian.co.uk/tv-and-radio/tvandradioblog/2009/oct/15/thick-of-it-malcolm-tucker">coherent, eloquent and funny</a>, whereas mine tends to be more like "Damn you mother son of a stupid crappy buggery tit wank", neither big nor clever, funny nor eloquent.</p>
<p>After I've calmed down and start trying painfully to debug the wsgi file (why does printing to stderr or stdout not seem to log any errors, in the end file('/tmp/f','w').write(str(sys.path)) was the only solution) I discover that absolutely nothing I can do is convincing the server to start up python2.6 instead of python2.5, which is utterly screwing up everything.  Then I find out that mod_wsgi has a compiled interpreter in it, and find out that the original builder of my machine didn't install our rpm of mod_wsgi but compiled his own, against his own python 2.5 install (in /usr/local as well).  A quick yum install mod_wsgi later and I start seeing error pages from my app that are actually generated by my app (no database, not the right directories available).  Hot diggity, I got it to work. (At this point I should point out that actually Ben Firshman and our web systems team at the guardian suffered the brunt of my swearing and ranting and gave me all the pieces needed to fix this, they deserve the actual credit).</p>
<p>It shouldn't be this painful, it really shouldn't.  I know java gets a bad rep for it's weirdness with the classpath on occasion, and the less said about the .NET GAC the better, but when I use a library in my application, I want to be able to package a binary version of that library in my deployable.  It should be that damn simple.</p>
<p>I had some paragraphs here that were my suggestions for the "python community", but actually that's lame.  I shouldn't just preach from the sidelines, "You thing isn't very good, make it better please", so I'm going to instead save that for later if I get enough time to actually come up with a sensible solution to this problem that I can implement and get working.</p>
<p>If you have a solution, please let me know.  I'd love to know that I'm wrong and that there is a simple solution to this that I missed.<!--EndFragment--></p>
