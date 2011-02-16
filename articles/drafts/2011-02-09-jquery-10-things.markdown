
top level function wrapper
==========================

    (function(window, document, undefined) {
      ...
    })(window, document)

is 

* calling self
* has local params to avoid scoping one level up
* has a handy `undefined` missing param (edge case), to prevent any top level `undefined` redefinition


jQuery.noconflict
=================
Not interested in ... memoize and set back lvar into ivar ...


jQuery.props
============

provides aliases for attributes names

it is used in jQuery.attr, so that both code produce same result
  
    $(elem).attr('a-very-long-attribute-was-changed-by-somebody', 'asasdfas');
    
    jQuery.props['cbs'] = 'a-very-long-attribute-was-changed-by-somebody';
    $(elem).attr('cbs', 'asasdfas');


ended at time 17:42
http://paulirish.com/2010/10-things-i-learned-from-the-jquery-source/



