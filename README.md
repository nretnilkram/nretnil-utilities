<h2>Version: 0.1.0</h2>

<h1>Usage:</h1>

<h3>Array</h3>

```ruby

array=["fishing", "bait", "worm"]

array.include? fish  # This is a built in Array function.
# => false

array.partial_include? fish
# => true

array.partial_include? shi
# => true

array.partial_include? shark
# => false

array=[{:foo=>"bar"}, {:bar=>"baz"}, {:baz=>"foo"}]

array.json_pretty
# => [
  {
    "foo": "bar"
  },
  {
    "bar": "baz"
  },
  {
    "baz": "foo"
  }
]

```

<h3>Hash</h3>

```ruby

hash={:one=>"un", :two=>"deux", :three=>"trois", :four=>"quatre"}

hash.json_pretty
# => {
  "one": "un",
  "two": "deux",
  "three": "trois",
  "four": "quatre"
}

```

<h3>Integer</h3>

```ruby

1234567890.to_human
# => 1.15GB

1234567890.to_human(5)
# => 1.14978GB

8549176320.to_human(1)
# => 8.0GB

12.to_human
# => 12B

5234566788764321.to_human
# => 4.65PB

1234567890987654321.to_human
# => 1.07EB

```

<h3>String</h3>

```ruby

string="TrUe"

string.to_b
# => true

"F".to_b
# => false

string="Television"

string.first
# => T

string.middle
# => elevisio

string.last
# => n

string.shuffle
# => eveosiliTn

string.scramble
# => Tileesoivn

string.valid_json?
# => false

string="jOhN sMiTh"

string.proper
# => John Smith

string="nretnil kram"

string.proper
# => Nretnil Kram

string="One two 3."

string.proper
# => One Two 3.

string.first
# => O

string.middle
# => ne two 3

string.last
# => .

string.shuffle
# => 3O.e  notw

string.scramble
# => Oo3netw  .

string.valid_json?
# => false

string='{ "One Octet" }'

string.valid_json?
# => false

string='{ "foo": "bar" }'

string.valid_json?
# => true

string='7*d8f7R6$5H@~32'

string.sym?
# => true

string='78d8f7R6k5H4g2'

string.sym?
# => false

string.uuid?
# => false

string='0b5865e9-0262-6238-1427-35b77c466ebd'

string.uuid?
# => true

string='0865e9-026-6238-127-35b77c46bd'

string.uuid?
# => false

string='xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'

string.uuid?
# => false

```

<h3>Time</h3>

```ruby

timing
# => 2018-04-03 15:00:30 -0400

timing(12.8345679)
# => 13 seconds

timing(123)
# => 02 minutes 03 seconds

timing(1_234.56789)
# => 20 minutes 35 seconds

timing(12_345)
# => 03 hours 25 minutes 45 seconds

```

<h3>Utilities</h3>

```ruby

6.times do
  fifty_fifty
end
# => true
# => false
# => true
# => true
# => true
# => false

6.times do
  one_third
end
# => false
# => false
# => true
# => false
# => false
# => true

6.times do
  coin_flip
end
# => tails'
# => tails'
# => 'heads
# => 'heads
# => 'heads
# => 'heads

```
