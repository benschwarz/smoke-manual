## Configuation
Smoke can be configured to a couple of things differently, at the time of writing the major functional differences are:

* logging
* caching
* setting the user agent

If you wanted to enable logging and masquerade as something other than Smoke (say, a browser - you cheeky bastard), you could add something like this before your Smoke definitions:

    syntax(ruby).
    Smoke.configure do |c|
      c[:enable_logging] = true
      c[:user_agent] = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0)" # har, har
    end