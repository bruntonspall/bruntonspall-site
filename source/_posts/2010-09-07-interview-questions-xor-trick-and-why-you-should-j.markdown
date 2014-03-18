---
layout: post
status: publish
published: true
title: Interview Questions, The XOR trick, and why you should just say No
author: Michael Brunton-Spall
author_login: bruntonspall
author_email: michael@brunton-spall.co.uk
author_url: http://www.brunton-spall.co.uk
wordpress_id: 56
wordpress_url: http://blog.brunton-spall.co.uk/2010/09/interview-questions-xor-trick-and-why-you-should-j/
date: '2010-09-07 10:46:29 +0000'
date_gmt: '2010-09-07 10:46:29 +0000'
categories:
- Technical
- Featured
tags:
- Rant
- Programming
- Interview Questions
comments:
- id: 22
  author: Test
  author_email: test@mailinator.com
  author_url: ''
  date: '2011-08-16 10:27:00 +0000'
  date_gmt: '2011-08-16 10:27:00 +0000'
  content: I can't agree more on this. I was asked recently about this. I did it mathematically.
    And that guy want me to use XOR. I totally forgot what XOR was. I aced 4 hrs of
    interview and phone interview, but, failing to answer this cost me the interview.
- id: 73
  author: JustAnotherSoftwareEngineer
  author_email: info@terra.es
  author_url: ''
  date: '2013-05-11 12:04:00 +0000'
  date_gmt: '2013-05-11 12:04:00 +0000'
  content: ! '<p>Let me respectfully doubt that after "acing 4hrs of interview and
    phone interview", failing to answer the "in place" short cost you the interview.</p>


    <p>You probably made other mistakes, or didn''t have the soft skills required
    (which is normally where people fail miserably), and everything added up to not
    progressing in the selection process.</p>


    <p>Regarding the article, I totally agree about the lack of readability and not
    re-inventing the wheel, but I''d add that it is absolutely necessary to KNOW how
    the different algorithm works. Otherwise, you''ll be just a monkey at the mercy
    of the "auto-complete" feature of your IDE (I call this coincidence driven development
    :)).</p>


    <p>Thanks, good article.</p>

'
---
<p>So I'm going to talk about the XOR trick, but first I'm going to say where I came across it.</p>
<p>A fair few years ago I worked briefly in the games industry as a programmer.  I applied for a number of jobs, and for almost every single one I had to do a programming test as part of my interview.  In one case the test was marked and I was summarily rejected (that felt nice!), but in all the other cases there was an opportunity afterwards to talk with the developers about the test and why you answered in the way you did.</p>
<p>However, I think that every single test had at least one question in common.  "C/C++ - You have two char's a and b.  You need to write a swap function that swaps the value of a and b without using any temporary memory".</p>
<p>This is a common programming test question because there is a mathmatical solution, and it's suprisingly simple, but not many people know about it.</p>
<!--more-->
<p>The solution is something I call the XOR trick (I'm sure there is a formal name for it though).</p>
<div id="LC3" class="line" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 1em; line-height: 1.4em; margin: 0px;">
<pre style="font: normal normal normal 12px/normal Monaco, 'Courier New', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', monospace; line-height: 1.4em; font-family: 'Bitstream Vera Sans Mono', Courier, monospace; font-size: 12px; padding: 0px; margin: 0px;"><span style="color: #000000; font-family: helvetica, arial, freesans, clean, sans-serif; white-space: normal; font-size: 11px; line-height: 14px;"><span class="kt" style="line-height: 1.4em; color: #445588; font-weight: bold; padding: 0px; margin: 0px;">void</span> <span class="nf" style="line-height: 1.4em; color: #990000; font-weight: bold; padding: 0px; margin: 0px;">swap</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">(</span><span class="kt" style="line-height: 1.4em; color: #445588; font-weight: bold; padding: 0px; margin: 0px;">char</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">a</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">,</span> <span class="kt" style="line-height: 1.4em; color: #445588; font-weight: bold; padding: 0px; margin: 0px;">char</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">b</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">)</span> <span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">{</span></span></pre>
</div>
<div id="LC4" class="line" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 1em; line-height: 1.4em; margin: 0px;"><span style="color: #000000; font-family: helvetica, arial, freesans, clean, sans-serif; white-space: normal; font-size: 11px; line-height: 14px;"> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">a</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">^=</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">b</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">;</span></span></div>
<div id="LC5" class="line" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 1em; line-height: 1.4em; margin: 0px;"><span style="color: #000000; font-family: helvetica, arial, freesans, clean, sans-serif; white-space: normal; font-size: 11px; line-height: 14px;"> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">b</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">^=</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">a</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">;</span></span></div>
<div id="LC6" class="line" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 1em; line-height: 1.4em; margin: 0px;"><span style="color: #000000; font-family: helvetica, arial, freesans, clean, sans-serif; white-space: normal; font-size: 11px; line-height: 14px;"> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">a</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">^=</span> <span class="o" style="line-height: 1.4em; font-weight: bold; padding: 0px; margin: 0px;">*</span><span class="n" style="line-height: 1.4em; padding: 0px; margin: 0px;">b</span><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">;</span></span></div>
<div id="LC7" class="line" style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 1em; line-height: 1.4em; margin: 0px;"><span style="color: #000000; font-family: helvetica, arial, freesans, clean, sans-serif; white-space: normal; font-size: 11px; line-height: 14px;"><span class="p" style="line-height: 1.4em; padding: 0px; margin: 0px;">}</span></span></div>
<p>This is what people are looking for in the interview.  The mathematics are fairly simple and work because XOR has a useful property, when you XOR A and B, you get a value C.  If you XOR C and A you'll get B back, if you XOR C and B you'll get A back.</p>
<p>This is demonstrated by the following table</p>
<table>
<tbody>
<tr>
<td>Arg 1</td>
<td>Arg 2</td>
<td>Result</td>
</tr>
<tr>
<td>A</td>
<td>B</td>
<td>C</td>
</tr>
<tr>
<td>B</td>
<td>C</td>
<td>A</td>
</tr>
<tr>
<td>A</td>
<td>C</td>
<td>B</td>
</tr>
</tbody>
</table>
<p>So to do the trick, we XOR A and B, and store C in A, destroying the original A.  We then XOR B and C which gives us A back, which we store in B.  We then XOR A and C which gives us B back that we can store in A again.</p>
<p>So whats the problem?</p>
<p>The problem with this is that firstly, from a technical perspective, you just shouldn't do it.</p>
<p>The code is not obvious to anybody who hasn't seen it, which makes it hard to maintain.</p>
<p>The compiler has no idea what the hell you are intending.  Using the rather more standard "char t = a; a = b; b = t;" the compiler knows what you are doing and is able to optimise it.  Your compiler is almost certainly smarter than you are, and might know about things such as swap opcodes that are supported by your CPU, or even more highly efficient implementations that might be based on your particular architecture.</p>
<p>Secondly, from an interviewing perspective this is a really crappy question.  I really don't think that when asked to solve the problem of swapping two variables without using temporary storage, this is the solution that you could come up with unless you'd already been taught it at some point.  That means you are not testing somebodies ingenuity, you are simply testing whether they prepared for the test by googling common interview questions.  You may as well ask them why manhole covers are round, or how many dentists there are in the US.</p>
<p>Finally from a Meta note, this is a bad question because I really can't think of any good time that you would actually want to write your own swap function.  In almost all libraries there is a swap function already written for you.  But more than that about the only occasion I've had to actually use a swap function is when writing a sorting algorithm, and I maintain that in the context of this test (games programming), if you are writing your own sorting algorithms rather than using one of the many well written implementations already out there then you are doing something wrong.</p>
<p>So there it is, the XOR trick.  Now you know it, never ever use it.  And if you are ever asked in an interview to swap two variables without using any temporary space, just say no.</p>
