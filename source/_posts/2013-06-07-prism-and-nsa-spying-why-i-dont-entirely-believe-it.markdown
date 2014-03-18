---
layout: post
status: publish
published: true
title: ! 'Prism and NSA Spying: why I don''t (entirely) believe it.'
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 7286
wordpress_url: http://www.brunton-spall.co.uk/?p=7286
date: '2013-06-07 12:10:02 +0000'
date_gmt: '2013-06-07 12:10:02 +0000'
categories:
- Technical
- Rants
- Featured
tags:
- prism
- nsa
comments:
- id: 77
  author: Weston Moss
  author_email: jwestonmoss@gmail.com
  author_url: ''
  date: '2013-06-07 14:50:00 +0000'
  date_gmt: '2013-06-07 14:50:00 +0000'
  content: ! '<p>Sounds good in theory.  But you''re overthinking this, by a lot.</p>


    <p>Three words for you.  Virtual.  Private.  Network.</p>


    <p>If the servers are in-house, as they undoubtedly are for Facebook, Google,
    etc.....VPN destroys this concept of "layers of impenetrable security".</p>

'
- id: 78
  author: Matt Brown
  author_email: octavius@gmail.com
  author_url: http://blog.mattnworb.com
  date: '2013-06-07 14:55:00 +0000'
  date_gmt: '2013-06-07 14:55:00 +0000'
  content: ! '<p>Your first possibility is the most likely one.</p>


    <p>Consider the audience of the original NSA slides - NSA employees briefing other
    intelligence analysts. That audience would not interpret "direct access to the
    servers" to mean shell access like technical/software folks would.</p>


    <p>What I would imagine the system actually provides is direct access <em>to the
    data</em>, meaning they can view whatever data they like in Facebook''s system,
    without needing to send formal requests to Facebook to look at X Y or Z when they''d
    like and waiting for Facebook to send something back to them.</p>


    <p>Think about it this way: would the government want access to the raw bytes
    stored on Google''s servers, which would require them to understand how to decode
    Google File System data and be kept 100% up to date on how all of Google''s backend
    systems work? Or would they prefer if Google provided them with a private search
    engine to access data, which Google has to keep up to date to work with all of
    the other Google systems?</p>

'
- id: 79
  author: HenkPoley
  author_email: HenkPoley@gmail.com
  author_url: ''
  date: '2013-06-07 14:58:00 +0000'
  date_gmt: '2013-06-07 14:58:00 +0000'
  content: ! '<p>I suspect that for $20 million over the whole project lifetime (2006?-2013)
    they merely had talks with the individual companies for a streamlined process
    for submitting requests and getting the data back in a proper format. It pays
    roughly 20 FTEs over those years.</p>

'
- id: 80
  author: Jon
  author_email: jon.rimmer@gmail.com
  author_url: ''
  date: '2013-06-07 15:01:00 +0000'
  date_gmt: '2013-06-07 15:01:00 +0000'
  content: ! '<p>They wouldn''t need to crack any encryption if these providers have
    handed over their private keys to the NSA.</p>

'
- id: 81
  author: Tal
  author_email: aosunthoe@mailinator.com
  author_url: ''
  date: '2013-06-07 15:23:00 +0000'
  date_gmt: '2013-06-07 15:23:00 +0000'
  content: ! '<p>The NSA does intercept all internet traffic (all US backbone traffic,
    anyway - not quite the same thing) and they almost certainly do have some root
    certificates kicking around. I agree however that this is unlikely to be what
    the presentation was about.</p>

'
- id: 82
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-06-07 15:50:00 +0000'
  date_gmt: '2013-06-07 15:50:00 +0000'
  content: ! '<p>Actually the presentations says approx $20 million per year rather
    than over project lifetime.  Still it''s a surprisingly small number for a government
    project.

    I also wonder where that number comes from, whether it just represents OpEx or
    includes the CapEx of building it, and so forth.</p>

'
- id: 83
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-06-07 15:53:00 +0000'
  date_gmt: '2013-06-07 15:53:00 +0000'
  content: ! '<p>Unfortunately this would require that the VPN internally is able
    to communicate externally.  If you were copying every byte of data, you''d double
    the traffic on the outgoing pipe the day you turned it on.  Every single Op in
    the company would notice that.

    Also I''m pretty certain that it''d be impossible inside our network to run a
    VPN client since the firewall and proxy configuration is not setup for that.  We
    don''t generally allow the servers to talk directly to the internet from inside
    the data center either to prevent easy downloading of rootkits or accidental data
    leakage.  Again it would be too easy for a new op to break the circuit with a
    firewall or network update and they''d not be allowed to know what they broke.</p>

'
- id: 84
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-06-07 15:55:00 +0000'
  date_gmt: '2013-06-07 15:55:00 +0000'
  content: ! '<p>Agreed.  That''s a pretty good summation of my main objections.

    I suspect that it''s a combination of 1 and 2 because of the public statements
    about having a searchable archive they can, but that might be marketing speak.</p>

'
- id: 85
  author: Kalmi
  author_email: kalmisoft@gmail.com
  author_url: ''
  date: '2013-06-08 01:07:00 +0000'
  date_gmt: '2013-06-08 01:07:00 +0000'
  content: ! '<p>Given the private key one can sometimes passively mitm attack SSL,
    but (for example) Google uses SSL in a way which is supposed to make this impossible.

    http://www.quora.com/SSL-Secure-Sockets-Layer/Is-it-ever-possible-to-decrypt-passively-sniffed-SSL-TLS-traffic/answer/Ian-Gallagher-2</p>

'
- id: 86
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-06-08 07:43:00 +0000'
  date_gmt: '2013-06-08 07:43:00 +0000'
  content: ! '<p>Thanks for that, I hadn''t heard of PFS for SSL.

    I''m a bit doubtful that Google handed over their private keys for SSL, partly
    because I think they''d make a massive fuss over it, and partly because my offlineimap
    process breaks using IMAP + TLS for Gmail on a regular basis because they regenerate
    the imap.gmail.com certificate.

    If they''d handed the keys over they''d need to hand them over again every time
    they changed the certificate.  That sounds like the sort of process that gets
    noticed and leaked.</p>

'
- id: 87
  author: sabur-randers.com | Überwachung &#8211; Was wussten Facebook, Google und
    Co von Prism?
  author_email: ''
  author_url: http://opusteno.info/a/uberwachung-was-wussten-facebook-google-und-co-von-prism/
  date: '2013-06-09 07:26:27 +0000'
  date_gmt: '2013-06-09 07:26:27 +0000'
  content: ! '<p>[...] an der Glaubwürdigkeit dieser Behauptung meldete beispielsweise
    schnell der britische Guardian-Programmierer Michael Brunton-Spall an. In seinem
    Blog betont er zwar, dass er keinerlei Insiderinformationen hat – hält aber die
    [...]</p>

'
- id: 89
  author: Was wussten Apple, Google und Co von Prism? - WSJ Tech - WSJ
  author_email: ''
  author_url: http://blogs.wallstreetjournal.de/wsj-tech/2013/06/08/prism/
  date: '2013-06-10 19:00:35 +0000'
  date_gmt: '2013-06-10 19:00:35 +0000'
  content: ! '<p>[...] an der Glaubwürdigkeit dieser Behauptung meldete beispielsweise
    schnell der britische Guardian-Programmierer Michael Brunton-Spall an. In seinem
    Blog betont er zwar, dass er keinerlei Insiderinformationen hat – hält aber die
    [...]</p>

'
- id: 90
  author: Just Me
  author_email: f2067933@rmqkr.net
  author_url: ''
  date: '2013-06-10 22:36:00 +0000'
  date_gmt: '2013-06-10 22:36:00 +0000'
  content: ! '<p>You do know, that the NSA just says: give me data and it gets data?
    They don''t need to do anything without the knowledge of the people who set up
    the server infrastructure.</p>


    <p>Companies like Facebook are required by Law to provide the government an interface
    to intercept and monitor all communications.</p>

'
- id: 94
  author: Charles Frith
  author_email: cefrith@hotmail.com
  author_url: http://charlesfrith.blogspot.com/
  date: '2013-06-14 03:12:00 +0000'
  date_gmt: '2013-06-14 03:12:00 +0000'
  content: ! '<p>Nobody factoring in information warfare?</p>

'
- id: 96
  author: google
  author_email: ''
  author_url: http://images.google.com.hk
  date: '2013-06-15 00:35:33 +0000'
  date_gmt: '2013-06-15 00:35:33 +0000'
  content: ! '<p><strong>google...</strong></p>


    <p>G http://images.google.com.hk/...</p>

'
---
<p>[EDIT: Note, I have absolutely no inside knowledge here whatsoever. I haven't seen anything except via the stuff the Guardian has published publically.]</p>
<p>You may have read this morning that the Guardian and the Washington Post announced that they had an authenticated NSA training presentation on PRISM which claimed that they had access to multiple large companies servers and were able to spy on any and all communications.</p>
<p>In essence the presentation says that Gmail, Apple iMessage, Facebook and most of the other internet services are all actively monitored by the NSA.</p>
<p>[caption id="attachment_7292" align="aligncenter" width="300"]<a href="http://www.flickr.com/photos/55785940@N00/2321658066/in/photolist-4xa74m-4yaqfh-4AGcmr-4BeTAZ-4E3rMr-4F6k5X-4G72V3-4JDFzx-4KJKkc-4LYYyV-4TnS4k-4VGFPd-4WSNF1-514Apg-52cgGu-58ekFc-5dpCs1-5fAu6j-5oCEVt-5wERaF-5zogA3-5HLJQm-5P44v6-5P4EMP-5SuTSe-5SAxAC-5SAxM3-5SKhw6-5Ugzem-5VRVei-5WcbfL-5WqSdr-5Zn6Jj-61BPM2-62vpib-63a6Fs-651TZp-69FfEo-6ftHvu-6jPAxH-6kewcL-6n8bQ6-6ncmBY-6sMdtf-6HxHyn-6Ro2ap-6WaWqb-73ZsaU-76K6SF-76P1Cb-77gmAW"><img class=" wp-image-7292 " alt="Prism by Tim Cummins" src="http://www.brunton-spall.co.uk/wp-content/uploads/2013/06/2321658066_d6108e4d77_o-300x212.jpg" width="300" height="212" /></a> Prism by Tim Cummins[/caption]</p>
<!--more-->
<p>The thing is, I don't believe it. I have a number of issues with it, but it boils down to two possibilities: that the presentation itself is fake; that the presentation and project are real, but the details are wrong.</p>
<p>I thought the presentation itself was fake at first, for a whole number of reasons, but I'm confident that the verification process at the Guardian is thorough enough to assuage my worries.</p>
<p>If the slides are real, then there's a number of claims that bother me, but the main two are the claims that they have "direct access to the servers" of the corporate partners, and the estimated cost of $20 million.</p>
<p>What does direct access to the servers mean? If we take it at face value, it means that the NSA's system is able to log into the servers of Facebook, Google, Microsoft and Skype and do anything they want.</p>
<p>The problem is that I don't think that's a terribly useful ability, nor possible to do in such a way as to be kept confidential only at the highest levels.</p>
<p>Servers in a data center aren't just like your desktop machines. They're complex things, and for companies at that scale there are literally millions of them.</p>
<p>Let me start with an analogy, and use a data center I know about, the one at the Guardian. Let's say that you've managed to convince somebody suitably high up at the Guardian that you need direct access to the servers, and they legally have to keep that knowledge to a minimum.</p>
<p>Our servers are subdived into a number of networks. This is part of our security program, and is done at a very low level. If you can get onto one of our webservers, then you are not able to get from there to our database, the network wont allow you.</p>
<p>We subdivide the webservers from the application servers, which are kept away from the content publishing system servers. The databases are divided depending on the kind of data stored, so our users data is kept on different servers to our content publishing system, and no server can access both.</p>
<p>Secondly, assuming you are able to access all the servers and databases that you need, everytime we build a new server you'd need us to provision the server with the appropriate user accounts and details.</p>
<p>For most servers we use a configuration management tool that defines the users and permissions, and that configuration is stored in a team accessible version control repository. So if we added the nsa user to that repository everybody would know who did it.</p>
<p>Furthermore there are some systems that can't be configured in that way, they need passwords set, and those passwords need to be securely stored. In our system we have a passwords file that contains those passwords, and it is securely encrypted with public key encryption. We therefore have a record of each user who can access those passwords and what their key is.<br />
In keeping with good password hygiene, those passwords are suitably long and complex and are changed on a regular basis, so you'd need access to that file to access some of those systems.</p>
<p>Finally, even assuming you can manage to put your details in all of those systems without anybody knowing, and without alerting the entire team of operations staff that this top-secret system exists, you've got another big problem: change.</p>
<p>Even with a small team of operations staff and only around 150 odd people in our digital development team, keeping track of what servers are storing what data and doing which things is hard work.<br />
We have to have regular emails, meetings and internal documentation systems to help us know what the guardian systems look like today, and we still mess up.</p>
<p>Yesterday we had an issue where we had migrated one of our applications from one server to another and it was no longer able to access one of the remote servers that we normally talk to. This isn't a million pound project to change anything, this was some essential maintenence work that was happening just via the bugs work queue.</p>
<p>We have automated systems to allow us to change our database structure as developers change the code, and we've done projects to migrate data from one database to another.<br />
In essence I think that by the time your project to read the guardians database is written the data it's reading will be in an incompatible format, and won't be able to read it.</p>
<p>You'd need to continuously monitor the changes going on in our databases and datacenter and be able to premptively update your system to handle those changes.</p>
<p>Finally, we actively monitor the load on our databases and our application servers so that we can plan for increasing the capacity. If there was some weird NSA box in the corner that was doing strange queries on our database then we would notice it in the monitoring.</p>
<p>Now think about doing that for a company the size of Google, then multiplying it by 11 to follow Microsoft, Yahoo, Facebook and more. It stretches credulouity to breaking point.</p>
<p>That brings us back, if they can't possibly have direct access to the servers then what are they talking about?</p>
<p>There's two possibilities, both of which are entirely real and possible.</p>
<p>The first is that each of those corporate companies have come on board to allow access to a law enforcement portal that allows individual requests to be made directly by the NSA, without needing a warrant and manual form<br />
processing.<br />
This portal would have to be maintained and built by the company themselves, and it would probably allow database searching for specific terms.</p>
<p>We know that Google, Twitter, Yahoo, Microsoft and others have had to comply with requests with a valid warrant from law enforcement authorities already. The Yahoo and Facebook guideline documents have been leaked on Cryptome, and you can see the manual processes that Law Enforcement has to go through.</p>
<p>However their existence means that these companies must have systems for doing legally mandated searches of their database.</p>
<p>I'd certainly believe that the NSA had tried to force these companies to make those portals directly available to law enforcement, but I'd have expected more noise about it, since these companies have long resisted the existing laws in this area.</p>
<p>The other possibility is that the NSA has network taps into the backbone of the internet itself, and is able to send decrypt SSL style encryption and provision a dragnet style net to catch, store and forward packets or streams that are interesting.</p>
<p>So if the NSA had hooks into the backbone and pulled Skype/Google Video streams that were between people of interest and archived them or sent them to Fort Meade for analysis then they'd have something able to get all of that information. But it wouldn't involve direct access to servers, and it would imply that almost all modern encryption had been broken.</p>
<p>There's a strong suspicion that the NSA has root level certificates for SSL that allows Man In The Middle attacks, but to do that to all internet traffic would I suspect be too easy to notice.</p>
<p>If on the other hand they can intercept all communications and crack basic encryption via some unknown method, then they could have something that could archive more or less all of the internet traffic.</p>
<p>If I was building such a thing it would keep a fairly short archive of all traffic, and have a process that extracts streams that are of interest and forwards them for further processing.</p>
<p>The combination of those two capabilities would add up to a PRISM like capability.<br />
Now imagein that someone in sales wrote the slides, would they explain all of that or just explain it as "direct access to their servers".</p>
<p>I wonder if we'll ever know the full story?</p>
