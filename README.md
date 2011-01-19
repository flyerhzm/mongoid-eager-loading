mongoid-eager-loading
=====================

mongoid-eager-loading adds the eager loading feature for mongoid.

Originally it is my [pull request][0] for mongoid, but it is not accepted yet, so I created this gem to get the eager loading benefits easily for my projects.

I only test it in mongoid-2.0.0.beta.19, maybe you can try it on other mongoid version, and let me know if it works fine.

Usage
-----

define it in your Gemfile

    gem "mongoid-eager-loading"

suppose you have a mongoid model Post

    class Post
      include Mongoid::Document

      referenced_in :user
      references_many :comments
    end

then you can use the eager loading like

    Post.includes(:user)
    Post.includes(:user, :comments)

eager loading can be only used on referenced_in, references_one and references_many associations.

Benchmark
---------

I also run a [benchmark][1] on my local computer, the result is as follows

    Starting benchmark...
                                                                      user     system      total        real
    Finding 10 posts with person, without eager loading           0.010000   0.000000   0.010000 (  0.005121)
    Finding 10 posts with person, with eager loading              0.000000   0.000000   0.000000 (  0.001886)
    Finding 50 posts with person, without eager loading           0.020000   0.000000   0.020000 (  0.021442)
    Finding 50 posts with person, with eager loading              0.000000   0.000000   0.000000 (  0.005267)
    Finding 100 posts with person, without eager loading          0.050000   0.000000   0.050000 (  0.057718)
    Finding 100 posts with person, with eager loading             0.010000   0.000000   0.010000 (  0.010141)


Author
------
Richard Huang :: flyerhzm@gmail.com :: @flyerhzm

Copyright
---------
Copyright (c) 2010 Richard Huang. See LICENSE for details.

[0]: https://github.com/mongoid/mongoid/pull/391
[1]: http://github.com/flyerhzm/mongoid-eager-loading/blob/master/benchmark/benchmark.rb
