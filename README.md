# Rugen

**Rugen** brings named Unicode literals to Ruby!

``` ruby
require 'rugen'

class SnowmanArmy
  extend Rugen

  puts "#{SNOWMAN} #{BLACK SNOWMAN} #{SNOWMAN WITHOUT SNOW}"
  # => "☃ ⛇ ⛄"
end
```
