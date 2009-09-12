## Transparent request caching
Now that you've pulled your sources together, you launch your web site and go out to dinner, you might even brag to your nerdy company about how quickly you pulled some new cool shit together. Then you check your twitter mentions. 

Everyone is saying that the site you just linked to is 500ing. Damn.
That happened to me, I rescued _nothing_, doh!

The responsible party was twitters api request limit (per hour), we need to make less requests. Enter, caching.

Caching is _disabled by default_, however, its really easy to turn it on:
    
    syntax(ruby).
    Smoke.configure do |c|
      c[:cache][:enabled] = true
      c[:cache][:store] = :memory
    end
    
The above example will use a ruby hash to store the contents of your requests in memory. In some cases, this might be okay, however, there are more options.

Caching is implemented using [wycats](http://github.com/wycats) [moneta](http://github.com/wycats/moneta), it provides a common interface to many hash storage types: 

* file
* memcache
* tokyo cabinet
* a ruby hash (memory) 
* mongodb

There are more, but if you want to know more about them, I suggest you read a bit about [moneta](http://github.com/wycats/moneta)

If you wanted to use Smoke caching with [Heroku](http://www.heroku.com), you could setup something like this (you'll need memcached enabled on your heroku instance):

    syntax(ruby).
    Smoke.configure do |c|
      c[:cache][:enabled] = true
      c[:cache][:store] = :memcache
      c[:cache][:options] = {
        :server => ENV['MEMCACHE_SERVERS'].split(','), 
        :namespace => ENV['MEMCACHE_NAMESPACE']
      }
    end


### Expiry 

Smoke defaults to 1800 seconds for expiry (thats 30 minutes), you can change the expiry time by adding another option to the configuration hash.

    syntax(ruby).
    Smoke.configure do |c|
      c[:cache][:enabled] = true
      c[:cache][:store] = :memory
      c[:cache][:expiry] = 3600 # 1 Hour
    end
