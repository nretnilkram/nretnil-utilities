<h2>Version: 0.0.1</h2>

<h1>Usage:</h1>

<h3>Array</h3>

```ruby

array=["fishing", "bait", "worm"]

array.include? fish  # This is a build in Array funtion.
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

<h3>String</h3>

```ruby

string=TrUe

string.to_b
# => true

string=Television

string.first
# => T

string.middle
# => elevisio

string.last
# => n

string.shuffle
# => Tveeoslini

string.scramble
# => Tlovisieen

string=One two 3.

string.first
# => O

string.middle
# => ne two 3

string.last
# => .

string.shuffle
# => .3Owot e n

string.scramble
# => O n3 towe.

```
