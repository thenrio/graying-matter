jasmine-jquery
==============

running project tests
---------------------
jasmine-jquery project has poor dependency management

    ~/src/js/jasmine-jquery/lib/external/jasmine (master)$ for file in ../../../../jasmine/lib/jasmine*; do ln -sv $file ; done

    ~/src/js/jasmine-jquery/lib/external/jquery (master)$ curl http://code.jquery.com/jquery-1.5.js > jquery.js

Then we can run and see tests

    ~/src/js/jasmine-jquery (master)$ open SpecRunner.html
    80 specs, 0 failures in 0.196s
    
Good

using in a rails project
------------------------


