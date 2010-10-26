mongoid-eager-loading
=====================

mongoid-eager-loading adds the eager loading feature for mongoid.

Originally it is my [pull request][0] for mongoid, but it is not accepted yet, so I created this gem to get the eager loading benefits easily for my projects.

Usage
-----

define it in your Gemfile

    gem "mongoid-eager-loading"

include the module after Mongoid::Document

    class User
      include Mongoid::Document
      include Mongoid::EagerLoading
    end

then you can use the eager loading like

    Post.includes(:user)
    Post.includes(:user, :comment)

Author
------
Richard Huang :: flyerhzm@gmail.com :: @flyerhzm

Copyright
---------
Copyright (c) 2010 Richard Huang. See LICENSE for details.

[0]: https://github.com/mongoid/mongoid/pull/391
