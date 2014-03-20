---
layout: post
status: publish
published: true
title: Map, map and flatMap in Scala
featured:
  preview: /images/uploads/2011/12/1464056042_169a1b6a14_z-300x199.jpg
  large: /images/uploads/2011/12/1464056042_169a1b6a14_z.jpeg
  caption: Scala (stairs) by Paolo Campioni
  url: [TO BE MIGRATED]
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 1348
wordpress_url: http://www.brunton-spall.co.uk/?p=1348
date: '2011-12-02 10:56:39 +0000'
date_gmt: '2011-12-02 10:56:39 +0000'
categories:
- technical
- featured
tags:
- scala
- learning
comments:
- id: 41
  author: Fernando Racca
  author_email: ''
  author_url: http://twitter.com/quant_leap
  date: '2012-04-29 19:45:00 +0000'
  date_gmt: '2012-04-29 19:45:00 +0000'
  content: ! '<p>Good summary Mike, thanks!</p>

'
- id: 43
  author: Soo Philip Kim
  author_email: philipjkim@gmail.com
  author_url: ''
  date: '2012-06-27 01:37:00 +0000'
  date_gmt: '2012-06-27 01:37:00 +0000'
  content: ! '<p>This helped a lot. Thanks!</p>

'
- id: 46
  author: Domlebo70
  author_email: domlebo70@gmail.com
  author_url: ''
  date: '2012-07-26 05:25:00 +0000'
  date_gmt: '2012-07-26 05:25:00 +0000'
  content: ! '<p>Great post. Really helped me understand flatmap.</p>

'
- id: 49
  author: Mathieu Dulac
  author_email: ''
  author_url: http://twitter.com/mathieudulac
  date: '2012-10-31 15:20:00 +0000'
  date_gmt: '2012-10-31 15:20:00 +0000'
  content: ! '<p>Your post helped me a lot to understand flatMap function. Thanks
    !</p>

'
- id: 59
  author: Haridas N
  author_email: haridas.nss@gmail.com
  author_url: http://haridas.in/
  date: '2012-11-19 17:50:00 +0000'
  date_gmt: '2012-11-19 17:50:00 +0000'
  content: ! '<p>I had problem with flatmap concepts. This post cleared it and now
    I understood it. Thank you.</p>

'
- id: 61
  author: 小明
  author_email: tinym87@gmail.com
  author_url: ''
  date: '2013-02-26 12:04:00 +0000'
  date_gmt: '2013-02-26 12:04:00 +0000'
  content: ! '<p>很不错的文章</p>

'
- id: 71
  author: Guest
  author_email: anonymized-892722464@disqus.com
  author_url: ''
  date: '2013-05-11 00:40:00 +0000'
  date_gmt: '2013-05-11 00:40:00 +0000'
  content: ! '<p>Hi, there''s a way to unapply tuples in methods that accept lambdas.
    Use pattern matching like so:</p>


    <p>val someMap = Map(1 -> ''a'', 2 -> ''b'')

    val mapped = someMap map { case (k, v) => "result %d %c".format(int, char)
    }</p>

'
- id: 72
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-05-11 07:30:00 +0000'
  date_gmt: '2013-05-11 07:30:00 +0000'
  content: ! '<p>Yup, as I say at the bottom of the article, the unapply is used by
    pattern matching, which is executed because a match is also a partial function.  The
    last examples show some better ways of doing it as well.

    Of course once you get into pattern matching you can also do things like someMap
    map { case (k,v) if v > 2 => v }

    or to replace the last example:

    someMap filter { case (_, Some(v)) => true }</p>

'
- id: 106
  author: Arun Ramakrishnan
  author_email: smartnutty007@yahoo.com
  author_url: ''
  date: '2013-07-27 04:25:00 +0000'
  date_gmt: '2013-07-27 04:25:00 +0000'
  content: ! '<p>m.filter( <em>.</em>2 != None ) should work just fine</p>

'
- id: 107
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-07-27 09:19:00 +0000'
  date_gmt: '2013-07-27 09:19:00 +0000'
  content: ! '<p>I personally prefer using either filterNot or the example as below
    using filter (case (<em>,Some(</em>)) => true ) rather than != but yes you
    are right.

    There''s more than one way to do it.</p>

'
- id: 109
  author: David Lee
  author_email: cailhuiris2@naver.com
  author_url: ''
  date: '2013-08-06 06:43:00 +0000'
  date_gmt: '2013-08-06 06:43:00 +0000'
  content: ! '<p>Wow very great post, it will help anyone to grab the general idea
    of scala collection library.</p>

'
- id: 115
  author: rama
  author_email: ramarama@aol.com
  author_url: ''
  date: '2013-10-31 19:06:00 +0000'
  date_gmt: '2013-10-31 19:06:00 +0000'
  content: ! '<p>thanks for holding hand and explaining flatMap</p>

'
- id: 116
  author: Public bookmarks 11/07/2013 (a.m.) | Cong&#039;s Blog
  author_email: ''
  author_url: http://vochicong.wordpress.com/2013/11/07/public-bookmarks-11072013-a-m/
  date: '2013-11-07 05:51:08 +0000'
  date_gmt: '2013-11-07 05:51:08 +0000'
  content: ! '<p>[&#8230;] Map, map and flatMap in Scala &#8211; Michael Brunton-Spall
    [&#8230;]</p>

'
- id: 117
  author: Malcolm
  author_email: malcolm.gorman@gmail.com
  author_url: ''
  date: '2013-11-08 04:41:00 +0000'
  date_gmt: '2013-11-08 04:41:00 +0000'
  content: ! '<p>You explain concepts consistently and with zero superfluous words
    or code. That''s hard to do.</p>

'
- id: 119
  author: Russell
  author_email: russell.lrg@gmail.com
  author_url: ''
  date: '2013-11-13 15:59:00 +0000'
  date_gmt: '2013-11-13 15:59:00 +0000'
  content: ! '<p>Thanks!</p>

'
- id: 121
  author: me
  author_email: me@mailinator.com
  author_url: ''
  date: '2013-11-29 12:20:00 +0000'
  date_gmt: '2013-11-29 12:20:00 +0000'
  content: ! '<p>Hi, just correct the "it’s collections framework" with "its". Then
    delete my comment. thanks</p>

'
- id: 123
  author: hha
  author_email: hoxiea@gmail.com
  author_url: ''
  date: '2013-12-10 19:00:00 +0000'
  date_gmt: '2013-12-10 19:00:00 +0000'
  content: ! '<p>In your definition of function f (second code snippet), I think that
    the "v"s should be replaced with "x"s in the body of the function.  Otherwise,
    useful!</p>

'
- id: 126
  author: Michael Brunton-Spall
  author_email: michael@brunton-spall.co.uk
  author_url: http://www.brunton-spall.co.uk
  date: '2013-12-31 18:55:00 +0000'
  date_gmt: '2013-12-31 18:55:00 +0000'
  content: ! '<p>Cheers,</p>


    <p>Given that this is my most popular post on my entire blog, and nobody has ever
    noticed, I''m impressed.  Anyway, I''ve corrected it, thanks.</p>

'
- id: 128
  author: Ezekiel Victor
  author_email: zekevictor@gmail.com
  author_url: ''
  date: '2014-01-07 21:42:00 +0000'
  date_gmt: '2014-01-07 21:42:00 +0000'
  content: ! '<p>Here''s another way to understand flatMap as a combination of map
    and reduce:</p>


    <p>// flatMap

    List(1, 2, 3).flatMap(x => List(x, x + 0.5)) // List(1.0, 1.5, 2.0, 2.5, 3.0,
    3.5)</p>


    <p>// With map/reduce

    List(1, 2, 3).map(x => List(x, x + 0.5)).reduceLeft(_ ++ _) // Same result
    as above!</p>

'
- id: 129
  author: Theo Ikonomou
  author_email: thikonom@yahoo.com
  author_url: ''
  date: '2014-02-06 23:40:00 +0000'
  date_gmt: '2014-02-06 23:40:00 +0000'
  content: ! '<p>Nice one.</p>

'
- id: 130
  author: Venu
  author_email: venu.gopalkasturi@gmail.com
  author_url: ''
  date: '2014-02-10 16:11:00 +0000'
  date_gmt: '2014-02-10 16:11:00 +0000'
  content: ! '<p>Great post!</p>

'
---
<p>One of the things I like about Scala is it's collections framework. As a non CS graduate I only very lightly covered functional programming at university and I'd never come across it until Scala. One the benefits of Scala is that the functional programming concepts can be introduced slowly to the programmer. One of the first places you'll start to use functional constructs is with the collections framework.</p>
<p>Chances are your first collection will be a list of items and we might want to apply a function to each item in the list in some way.</p>
<!--more-->

<p>Map works by applying a function to each element in the list.</p>
``` scala
scala> val l = List(1,2,3,4,5)

scala> l.map( x => x*2 )
res60: List[Int] = List(2, 4, 6, 8, 10)
```
<p>So there are some occasions where you want to return a sequence or list from the function, for example an Option</p>
``` scala
scala> def f(x: Int) = if (x > 2) Some(x) else None

scala> l.map(x => f(x))
res63: List[Option[Int]] = List(None, None, Some(3), Some(4), Some(5))
```
<p>flatMap works applying a function that returns a sequence for each element in the list, and flattening the results into the original list. This is easier to show than to explain:</p>
``` scala
scala> def g(v:Int) = List(v-1, v, v+1)
g: (v: Int)List[Int]

scala> l.map(x => g(x))
res64: List[List[Int]] = List(List(0, 1, 2), List(1, 2, 3), List(2, 3, 4), List(3, 4, 5), List(4, 5, 6))

scala> l.flatMap(x => g(x))
res65: List[Int] = List(0, 1, 2, 1, 2, 3, 2, 3, 4, 3, 4, 5, 4, 5, 6)
```
<p>This comes in really useful with the built in Option class because an option can be considered a sequence that is either empty or has 1 item.</p>
``` scala
scala> l.map(x => f(x))
res66: List[Option[Int]] = List(None, None, Some(3), Some(4), Some(5))

scala> l.flatMap(x => f(x))
res67: List[Int] = List(3, 4, 5)
```
<p>So with that all covered, lets look at how you can apply those concepts to a Map. Now a map can be implemented a number of different ways, but regardless of how it is implemented it can be thought of as a sequence of Tuples, where a tuple is a pair of items, the key and the value.</p>
``` scala
scala> val m = Map(1 -> 2, 2 -> 4, 3 -> 6)
m: scala.collection.immutable.Map[Int,Int] = Map(1 -> 2, 2 -> 4, 3 -> 6)

scala> m.toList
res69: List[(Int, Int)] = List((1,2), (2,4), (3,6))
```
<p>We can access a tuple by accessing the inner variables _1 and _2</p>
``` scala
scala> val t = (1,2)
t: (Int, Int) = (1,2)

scala> t._1
res70: Int = 1

scala> t._2
res71: Int = 2
```
<p>So we want to think about using map and flatMap on our Map, but because of the way a map works it often doesn't make quite the same sense, we probably don't want to apply a function to the tuple, but to the value side of the tuple, leaving the key as is, so for example we might want to double all the values. Map provides us with a function to do exactly that.</p>
``` scala
scala> m.mapValues(v => v*2)
res73: scala.collection.immutable.Map[Int,Int] = Map(1 -> 4, 2 -> 8, 3 -> 12)

scala> m.mapValues(v => f(v))
res74: scala.collection.immutable.Map[Int,Option[Int]] = Map(1 -> None, 2 -> Some(4), 3 -> Some(6))
```
<p>But in my case I wanted to do something more like flat map in this case, I want a map to come out that misses out the key 1 because it's value is None. flatMap doesn't work on maps like mapValues, it get's passed the tuple and if it returns a List single items you'll get a list back, but if you return a tuple you'll get a Map back.</p>
``` scala
scala> m.flatMap(e => List(e._2))
res85: scala.collection.immutable.Iterable[Int] = List(2, 4, 6)

scala> m.flatMap(e => List(e))
res86: scala.collection.immutable.Map[Int,Int] = Map(1 -> 2, 2 -> 4, 3 -> 6)
```
<p>Ok so we are pretty close to using options with flatMap, we need to filter out our None's, we can do returning a list with just e => f(e._2) and we'll get the list of values without the None's, but that isn't really what I want. What I need to do is return an Option containing a tuple. So here's our updated function:</p>
``` scala
scala> def h(k:Int, v:Int) = if (v > 2) Some(k->v) else None
h: (k: Int, v: Int)Option[(Int, Int)]
```
<p>and here's how we might call it:</p>
``` scala
scala> m.flatMap ( e => h(e._1,e._2) )
res109: scala.collection.immutable.Map[Int,Int] = Map(2 -> 4, 3 -> 6)
```
<p>but this is pretty ugly, all those _1 and _2's make me sad. If only there was a nice way of unapplying the tuple into variables. Given that this works in python and in a number of places in scala I thought this code should work:</p>
``` scala
scala> m.flatMap ( (k,v) => h(k,v) )
:10: error: wrong number of parameters; expected = 1
```
<p>I spent way too long today looking at this (in 5 minute chunks broken by meetings to be fair), before I gave in and asked a coworker what the hell I was missing. The answer is seems is that an unapply is normally only executed in a PartialFunction, which in scala is most easily defined as a case statement. So this is the code that works as expected:</p>
``` scala
scala> m.flatMap { case (k,v) => h(k,v) }
res108: scala.collection.immutable.Map[Int,Int] = Map(2 -> 4, 3 -> 6)
```
<p>Note that we switch to using curly braces, indicating a function block rather than parameters, and the function is a case statement. This means that the function block we pass to flatMap is a partialFunction that is only invoked for items that match the case statement, and in the case statement the unapply method on tuple is called to extract the contents of the tuple into the variables. This form of variable extraction is very common, and you'll see it used a lot.</p>
<p>There is of course another way of writing that code that doesn't use flatMap. Since what we are doing is removing all members of the map that don't match a predicate, this is a use for the filter method:</p>
``` scala
scala> m.filter( e => f(e._2) != None )
res114: scala.collection.immutable.Map[Int,Int] = Map(2 -> 4, 3 -> 6)

scala> m.filter { case (k,v) => f(v) != None }
res115: scala.collection.immutable.Map[Int,Int] = Map(2 -> 4, 3 -> 6)

scala> m.filter { case (k,v) => f(v).isDefined }
res116: scala.collection.immutable.Map[Int,Int] = Map(2 -> 4, 3 -> 6)
```
