---
layout: post
status: publish
published: true
title: Identifiers are not numbers
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 1026
wordpress_url: http://www.brunton-spall.co.uk/?p=1026
date: '2011-09-24 12:13:14 +0000'
date_gmt: '2011-09-24 12:13:14 +0000'
categories:
- rants
- featured
tags:
- programming
- json
- rants
comments:
- id: 24
  author: Simon Davy
  author_email: ''
  author_url: http://twitter.com/bloodearnest
  date: '2011-09-24 13:29:00 +0000'
  date_gmt: '2011-09-24 13:29:00 +0000'
  content: ! '<p>Good stuff. I''ve long been a fan of opaque id''s, for all the reasons
    above.</p>


    <p>As to what non-integer opaque id''s to use, there''s but a choice between a
    deterministic or arbitrary ids. Usually, you use arbitrary ids when there isn''t
    a natural key(s) (or when forced upon you my an ORM <em>cough</em>django*cough)
    - UUID4 is perfect for this.</p>


    <p>Sometimes you want a deterministic id as a surrogate key, because you want
    to detect duplicate data, and you can''t use compound ids because of lack of support,
    too many items, or performance concerns. In that case, some form of hash works
    well, like SHA1.</p>

'
- id: 25
  author: Derick Rethans
  author_email: ''
  author_url: http://twitter.com/derickr
  date: '2011-09-24 14:31:00 +0000'
  date_gmt: '2011-09-24 14:31:00 +0000'
  content: ! '<p>"16bit MAXINT (4,294,967,295 for unsigned ints)" — that''s 32bit.</p>

'
- id: 26
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2011-09-24 16:12:00 +0000'
  date_gmt: '2011-09-24 16:12:00 +0000'
  content: ! '<p>Dammit, see that''s what happens when I accidentally publish before
    I''ve properly double checked everything.  I even knew that when I re-calculated
    the 4 billion number again, and thought must change that to 32 bit.</p>

'
- id: 27
  author: Jonathan Hartley
  author_email: tartley@tartley.com
  author_url: http://tartley.com
  date: '2011-09-25 18:35:00 +0000'
  date_gmt: '2011-09-25 18:35:00 +0000'
  content: ! '<p>Thanks for writing this up. It makes all kinds of sense now you''ve
    laid it out and I''ve had time to percolate on it. I''ve not been in the habit
    of doing this, but I''m a convert now.</p>

'
---
<p>_"I am not a number, I am a free man"_</p>
<p>So something bugs me (I know, big shock), and it's API documentation like this:</p>
<p>    The document will be returned as:<br />
    ID: Integer<br />
    Name: String<br />
    Published: Date/Time</p>
<p>My position on this is simple, in an API (we'll come back to internal design later), an ID should *always* be of String type.</p>
<!--more-->
<p>So why is this a big deal?  I mean you implement this with a database table with autoincrement right, so it is a number underneath?</p>
<p>There's a few issues with this and I'll deal with them in reverse stupidity order.</p>
<p>Numbers are more than identifiers<br />
-------</p>
<p>A number represents a mathematical concept.  It implies strict ordering (2 is always > than 1), it implies a set of operations (1+2=3) and it implies an infinite set.<br />
If you provide external developers with numbers they are going to assume that these implications are available and might make some form of sense.</p>
<p>You would hope that most people wouldn't assume that something like twitter ids can be added or multiplied and expect anything sensible from them, but that comparison function, that's a bit more tricky. It's true that tweet 1 was sent before tweet 2, and even that tweet 1,000,000,000 was sent before tweet 2,000,000,000.  But as twitter scales guaranteeing that ordering becomes harder and harder in a massively parallel system, and there is no value in a client ordering tweets this way.  Each tweet has a date/time field on it indicating when it was sent, and ordering based on that field is far more semantically correct (and what the user expects).</p>
<p>Numbers aren't equal in all languages<br />
------</p>
<p>If you argue that representing something as a number is saving you memory, because an integer only occupies say 2 bytes, you are probably prematurely optimising.<br />
Number representation is a very complex subject, one which I know only a little, but I know enough to know that I should never make assumptions about how a number is represented internally.</p>
<p>I come from a C background, and despite it being fairly common knowledge how big various numbers are stored, we have a sizeof operator for a reason.  Compiling your program on a slightly different architecture could change your integers from 2 bytes to 4 bytes to 8 bytes to anything inbetween. It's a pretty common source of bugs for new developers to assume that unsigned int a is 4 bytes in size.</p>
<p>When you provide a number in an API, You have no idea who is consuming the API or what system they are running on.  It might be an x86 EC2 instance, or it might be a mobile device, it might be a super computer, or a graphic compute unit.</p>
<p>It's fine in your system when you create your 4 billionth item and exceed the 32bit MAXINT (4,294,967,295 for unsigned ints), but will it be fine for all your users?  If your samples and current users get numbers in the low 100's, but 2 years down the line you have a wildly successful product and your id's are now into the billions upon billions?  Do you want people writing API libraries to have to worry and think about this?</p>
<p>One fantastic issue that <a href="https://dev.twitter.com/docs/twitter-ids-json-and-snowflake">twitter discovered</a> fairly recently is that javascript and therefore many json libraries are required to <a href="http://ecma262-5.com/ELS5_HTML.htm#Section_8.5">represent integers as a 53 bit number</a>, that's a pretty large number, but it's several orders of magnitude less than most people would expect.</p>
<p>You make database scaling hard<br />
------</p>
<p>Autoincrementing primary keys are fine if your datastore is a single logical machine (a highly connected cluster), but as you add parallelism, there are a number of situations where you might want to be able to allocate id's from more than one cluster at the same time without synchronisation between them.</p>
<p>If your ID's in your table are not autoincrementing integers, but are an identifier that maybe looks like "DC1-DB1-0001" (or some other similar system), an identifier that takes into account the datacenter and database identifiers, reconciliation for tweet creation is perfectly possible.</p>
<p>You lock yourself into technologies<br />
------</p>
<p>Autoincrementing primary keys are a feature of most relational databases.  Some support it natively, some support it with triggers and stored procedures.<br />
However for scalability reasons, most non-relational databases don't support them.  Mongo for example provides primary keys that are OID's or Object ID's.  These are a UUID4 type identifier that takes into account the host, the time and a few other things at creation time.  BigTable provides horrible "keys" that are totally opaque, I have no idea how a key is generated (nor should I need to know).</p>
<p>Adding an autoincrementing key on top of these technologies is often possible, but it is often not ideal.</p>
<p>Conclusion<br />
-----------</p>
<p>So there is a number of good reasons not to use numbers as an identifier in your API.  Just use a string, trust me on this, you'll use sightly more bytes, but you wont have to convert the integer into a string at API render time, and your client wont convert it back.  Your string will be opaque to the user, meaning you can change primary identifier format willy nilly and providing the old and new format don't conflict it won't matter.  Nobody will try to use false ordering on your ID's when they should use a field instead, and it wont make me angry and ranty when I read your API documentation.</p>
<p>Addendum<br />
--------</p>
<p>I'm not saying don't use a number in your database schema.  It's entirely possible for your ID's that you know you'll only ever generate a few hundred ID's and that you wont have a date/time field, but order of creation is important and ordering the ID's is the simplest way to do so.  There are many valid reasons to use a numerical id internally for various things, but when you convert it into an API or external system, just turn that number into a string.</p>
<p>I strongly suspect that there will be people who will see your "{ 'id':'123' }" and will turn it into a number themselves, but then later if you return a document "{ 'id': '01-007'}" they can't really complain, because you always told them it was an opaque string.</p>
