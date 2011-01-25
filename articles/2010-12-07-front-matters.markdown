title: What is this "Front Matter" thing ?
slug: front-matters

I have some text notes in git.

I was looking for a presentation for them.
My features were in this order:

1. posts in text, markdown favored
2. site
3. do not bother with style
4. git

So give a try to

* [jekyll](https://github.com/mojombo/jekyll)
* [toto](https://github.com/cloudhead/toto)


First glance on structure of a post
===================================

Both share a structure for an article|post 

0. file name

  * basename is YYYY-mm-dd-post-title
  * extension is an hint for template in jekyll (markdown) and configurable in toto

1. "Front Matter"

  It is a piece of meta information

  * __[YAML Front Matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter)__ in jekyll
  * nameless, still yaml in toto

2. Content

  power of raw text, toto use markdown, jekyll can use more


How Front do Matter ?
=====================

Both implementation use regexp to extract yaml from article, and they are not the same

* __jekyll__

    first capture of <code>/^(---\s*\n.*?\n?)^(---\s*$\n?)/m</code>
    (see [convertible.rb](https://github.com/mojombo/jekyll/blob/master/lib/jekyll/convertible.rb))
    
    omitting front matter in article means __no article__
    
* __toto__

    before match of /\n\n/

    omitting front matter means __no site__

jekyll and toto __Front Matters are not compatible__.


What does it mean for me ?
===========================

I'm embarrassed with this __matter__ : I can not use a post file in both system

This is, IMHO, a side effect of this "unstandardized" front matter...
markdown has a specification (and some pretty extensions)
front matter has not, and there is no reason why it should, as meta information is relevant to a system implementation

And what if markdown information and matter information where separate ?

    posts/
      posts.matter
      1855-01-01-charmail.markdown
      1855-01-01-carnet.markdown
      1855-01-01-carnet.matter
      
Then, markdown file is a piece of information valid under both systems.
