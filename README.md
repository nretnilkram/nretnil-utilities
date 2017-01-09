<h2>Version: 0.0.4</h2>

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
# => vTenlseiio

string.scramble
# => Tvsleioein

string.valid_json?
# => false

string="One two 3."

string.first
# => O

string.middle
# => ne two 3

string.last
# => .

string.shuffle
# => onwte  O3.

string.scramble
# => O tw3 oen.

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
