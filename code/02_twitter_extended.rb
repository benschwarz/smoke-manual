Smoke.data(:twitter) do
  prepare do
    url "http://twitter.com/users/show.json?screen_name=#{username}"
  end
  
  discard :text, /@\w/
end