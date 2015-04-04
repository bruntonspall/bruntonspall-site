---
layout: post
title: "Microservices and hetrogeneity"
date: 2015-02-26 09:26:48 +0000
comments: true
featured:
  preview: /images/uploads/agile-vs-prince2-300x199.jpg
  large: /images/uploads/agile-vs-prince2.jpg
  caption: Agile vs. Prince2 by Matthew Hutchinson
  url: https://www.flickr.com/photos/hiddenloop/429289122

categories:
 - technical
 - featured
---

One of the much vaunted benefits of microservices is the claim of hetrogeneous development environments.  Because we agree that microservices should interact via well known or standardised protocols (like HTTP, Thrift, RPC), it means that different microservices can be written in completely different technology stacks.
This often seems to scare technology managers, heads of engineering and operations teams.  If we diversify our technology stack it will make people rotation harder, it makes operating the services harder as there is less uniformity, and it means that monitoring, alerting, diagnostic tools and the various other tools and processes that the organisation has built up over time wont work any more.

I want to tell you about an experience I had at the Guardian, and how having a homogeneous environment hurt us badly as a development team and how moving towards hetrogeneous environments can improve the team culture and technology options.

## Moving back in time
A number of years ago, the Guardian had a problem.  We had successfully built a large new modern content management system, and it was doing exactly what we had intended, it was attracting more readers from around the web to some of our best content.

The problem was that we had a scalability problem.  The CPU load on our database server was directly proportional to the number of page views, so at high traffic times, the load on the database would spike, the system would slow down and we would start to suffer outages.

We weren't a stupid team, we had a pair of in memory caches that were designed to cache content and queries respectively to reduce exactly this kind of behaviour.  Our initial diagnosis was that the cache hit rate was far too low, that the breadth of content accessed across the guardian site meant that we were increasingly unlikely to still have the details in the cache, especially as traffic increased.

We looked at scaling our database system, but the estimated cost was multiple millions
