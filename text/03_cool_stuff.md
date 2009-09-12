# Cool stuff smoke does

## Output formats

Not only does Smoke query a web service and automagically translate Json or XML to an array of ruby hashes, it will also output in Json or Yaml.

    syntax(ruby). 03_output.rb

## Smart requests

All requests ask the web service on the other end to gzip its data before it delivers it back to smoke. This means that less data is transferred - You can compress plain text pretty successfully.

Not all services support / implement gzip, but for those who do, its a clear win.
