## Diving straight in

Say you wanted to get your twitter stream, doesn't sound too hard? It isn't! 

The first thing that you'll need to do is discover your source. Smoke supports YQL, XML, JSON and RSS / Atom.

    syntax(ruby). 02_twitter.rb

Now that the source has been defined you can use it like this:

    syntax(ruby). 02_twitter_usage.rb
    
This will give you an array of hashes, each hash will be a tweet. 

Right now you're probably sitting there smugly thinking to yourself "yeah, I could do that myself pretty easily."

Well, you smug bastard, there is some more we can do.
Perhaps you'd like to open an interface to pull twitter feeds for multiple users? Maybe you'd like to strip out tweets that were directed at someone?

    syntax(ruby). 02_twitter_extended.rb
    
Now that you've suggested that a username is required for the query. You need to send through a username.
    syntax(ruby). 02_twitter_extended_usage.rb

The smoke DSL is pretty easy to pickup. All methods are well documented using rdoc, so exploring the API should be easy.