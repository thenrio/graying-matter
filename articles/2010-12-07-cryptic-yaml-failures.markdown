title: Pesky and cryptic yaml parsing failures with ruby
slug: cryptic-yaml-failures

I used some jekyll [YAML Front Matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter) in [toto](https://github.com/cloudhead/toto)

It is not a good idea

:|

Here is a jekyll post with its front matter

    ---
    layout: default
    title: awesome
    ---
    
    matter
    
jekyll recognize matter

    ---
    layout: default
    title: awesome
    
toto recoginize matter

    ---
    layout: default
    title: awesome
    ---
    

Thou shall fail
---------------
YAML fail to load toto matter, with hint

    ArgumentError: syntax error on line 2, col 3: `'
    	.../ruby-1.9.2-p0/lib/ruby/1.9.1/syck.rb:135:in `load'
    	.../ruby-1.9.2-p0/lib/ruby/1.9.1/syck.rb:135:in `load'
    	.../ruby-1.9.2-p0/gems/toto-0.4.9/lib/toto.rb:235:in `load'

I looked __hard__ at it...
And failed to understand it

* there is no ' character anywhere in this file
* syck.rb:135 is no-no help, error is raised in C extension, and __I do not know how to find it easily__ (that is not used to open/read ruby C code)

Learn by experiment ?
---------------------

* Removing trailing document separator '---' enables yaml to parse file ...

  I would not have bet on that looking at [specification](http://yaml.org/spec/1.0/#id2561718)

  jekyll removes it ...


* Adding content after document separator enables yaml to parse file ...

  but, then it is jekyll post content, I don't want that

  And if I do so, there is still 1 document parsed, not 2... Hummmm....


What does another implementation says ?
---------------------------------------

    brew install libyaml
    pip install pyyaml

    >>> import yaml
    >>> data = yaml.load(open('file-that-does-not-parse.yml'))
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
      File "/Library/Python/2.6/site-packages/yaml/__init__.py", line 58, in load
        return loader.get_single_data()
      File "/Library/Python/2.6/site-packages/yaml/constructor.py", line 42, in get_single_data
        node = self.get_single_node()
      File "/Library/Python/2.6/site-packages/yaml/composer.py", line 43, in get_single_node
        event.start_mark)
    yaml.composer.ComposerError: expected a single document in the stream
      in "<string>", line 2, column 1:
        title: Patch with git recipe
        ^
    but found another document
      in "<string>", line 4, column 1:
        ---
        ^

psych says to use libyaml and pyyaml is made by libyaml project

So what ?

Then, I'm inclined to expect to have not far behaviors ...

* pyyaml fails to parse, says why, and I do understand
* psych fails to parse, says why, and I do __not__ understand
  
(This reminds me of the "Good and Bad Product Owner" joke : both select and prioritize items in backlog... and one is Good, and the other is Bad :)