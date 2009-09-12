require 'smoke'
Smoke.data(:twitter) do
  url "http://twitter.com/users/show.json?screen_name=benschwarz"
end