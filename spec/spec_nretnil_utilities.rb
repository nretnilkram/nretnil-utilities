# frozen_string_literal: true

require 'spec_helper'

describe 'ARRAY.partial_include?' do
  before do
    @array = %w[Zero One Two Three Four Five Six Seven Eight Nine]
  end

  it 'should return true if one of the array values partially matches (case insensitive)' do
    expect(@array.partial_include?('eve')).to be true
    expect(@array.partial_include?('zer')).to be true
    expect(@array.partial_include?('six')).to be true
    expect(@array.partial_include?('xyz')).to be false
    expect(@array.partial_include?('thr33')).to be false
  end
end

describe 'ARRAY.json_pretty' do
  before do
    @array = [{ foo: 'bar' }, { bar: 'baz' }, { baz: 'foo' }]
  end

  it 'should return a json string with new lines' do
    expect(@array.json_pretty.is_a?(String)).to be true
    expect(@array.json_pretty).to eq "[\n  {\n    \"foo\": \"bar\"\n  },\n  {\n    \"bar\": \"baz\"\n  },\n  {\n    \"baz\": \"foo\"\n  }\n]"
    expect([].json_pretty).to eq "[\n\n]"
  end
end

describe 'HASH.json_pretty' do
  before do
    @hash = { foo: 'bar', bar: 'baz', baz: 'foo' }
  end

  it 'should return a json string with new lines' do
    expect(@hash.json_pretty.is_a?(String)).to be true
    expect(@hash.json_pretty).to eq "{\n  \"foo\": \"bar\",\n  \"bar\": \"baz\",\n  \"baz\": \"foo\"\n}"
    expect({}.json_pretty).to eq "{\n}"
  end
end

describe 'INTEGER.to_human' do
  before do
  end

  it 'should return a string with human readable byte size' do
    expect(12_345.to_human.is_a?(String)).to be true
    expect(12_345.to_human).to eq '12.06KB'
    expect(1024.to_human).to eq '1.0KB'
    expect(1_048_576.to_human).to eq '1.0MB'
    expect(3_788_576_543_543.to_human).to eq '3.45TB'
  end
end

describe 'STRING.to_b' do
  before do
  end

  it 'should return boolean or nil' do
    expect([true, false].include?('True'.to_b)).to be true
    expect('True'.to_b).to be true
    expect('t'.to_b).to be true
    expect('False'.to_b).to be false
    expect('FAlsE'.to_b).to be false
    expect('xyz'.to_b.nil?).to be true
  end
end

describe 'STRING.to_b' do
  before do
  end

  it 'should return boolean or nil' do
    expect([true, false].include?('True'.to_b)).to be true
    expect('True'.to_b).to be true
    expect('t'.to_b).to be true
    expect('False'.to_b).to be false
    expect('FAlsE'.to_b).to be false
    expect('xyz'.to_b.nil?).to be true
  end
end

describe 'STRING.shuffle' do
  before do
    @string = 'The fish swam away.'
  end

  it 'should produce a string with the same length as the string' do
    expect(@string.shuffle.nil?).to be false
    expect(@string.shuffle.is_a?(String)).to be true
    expect(@string.shuffle.length).to eq @string.length
  end
end

describe 'STRING.first' do
  before do
    @string = 'fishing'
  end

  it 'should produce the first character of the string' do
    expect(@string.first.nil?).to be false
    expect(@string.first.is_a?(String)).to be true
    expect(@string.first).to eq 'f'
  end
end

describe 'STRING.middle' do
  before do
    @string = 'fishing'
  end

  it 'should produce the middle characters of string' do
    expect(@string.middle.nil?).to be false
    expect(@string.middle.is_a?(String)).to be true
    expect(@string.middle).to eq 'ishin'
    expect(@string.middle.length).to eq @string.length - 2
  end
end

describe 'STRING.last' do
  before do
    @string = 'fishing'
  end

  it 'should produce the last character of the string' do
    expect(@string.last.nil?).to be false
    expect(@string.last.is_a?(String)).to be true
    expect(@string.last).to eq 'g'
  end
end

describe 'STRING.scramble' do
  before do
    @string = 'The fish swam away.'
  end

  it 'should produce a string with the same characters and length as the string' do
    expect(@string.scramble.nil?).to be false
    expect(@string.scramble.is_a?(String)).to be true
    expect(@string.scramble.length).to eq @string.length
  end
end

describe 'STRING.valid_json?' do
  before do
  end

  it 'should produce a boolean determining whether the string is valid json' do
    expect(''.valid_json?).to be false
    expect('json'.valid_json?).to be false
    expect('{}'.valid_json?).to be true
    expect('{"foo": "bar"}'.valid_json?).to be true
  end
end

describe 'STRING.uuid?' do
  before do
  end

  it 'should produce a boolean determining whether the string is a valid uuid' do
    expect(''.uuid?).to be false
    expect('asdf'.uuid?).to be false
    expect('eb700e27-5e8c-4085-bba2-3f6a89511cf1'.uuid?).to be true
    expect('eb700e275e8c4085bba23f6a89511cf1'.uuid?).to be false
    expect('af9f62fa-ca8f-8724-9f19-56ce606663f9'.uuid?).to be true
    expect('Xf9f62fX-ca8f-8724-9f19-56ce606663f9'.uuid?).to be false
  end
end

describe 'STRING.sym?' do
  before do
  end

  it 'should produce a boolean determining whether the string contains a symbol' do
    expect(''.sym?).to be false
    expect('asdf'.sym?).to be false
    expect('$ymb0l'.sym?).to be true
  end
end

describe 'STRING.proper' do
  before do
    @string = 'fishing trip'
  end

  it 'should produce a string with the words returned capitalized' do
    expect(@string.proper.nil?).to be false
    expect(@string.proper.is_a?(String)).to be true
    expect(@string.proper.length).to eq @string.length
    expect(@string.proper).to eq 'Fishing Trip'
    expect('jane e doe'.proper).to eq 'Jane E Doe'
  end
end

describe 'timing' do
  before do
  end

  it 'should produce a timestamp' do
    expect(timing.nil?).to be false
    expect(timing.is_a?(Time)).to be true
  end

  it '(1_546_344_534) should produce a string' do
    expect(timing(1_546_344_534).nil?).to be false
    expect(timing(1_546_344_534).is_a?(String)).to be true
    expect(timing(1_546_344_534)).to eq '1 days 12 hours 8 minutes 54 seconds'
  end

  it '(12_556) should produce a string with minutes and seconds' do
    expect(timing(12_556).nil?).to be false
    expect(timing(12_556).is_a?(String)).to be true
    expect(timing(12_556)).to eq '3 hours 29 minutes 16 seconds'
  end

  it '(125) should produce a string with minutes and seconds' do
    expect(timing(125).nil?).to be false
    expect(timing(125).is_a?(String)).to be true
    expect(timing(125)).to eq '2 minutes 5 seconds'
  end

  it '(37) should produce a string with seconds' do
    expect(timing(37).nil?).to be false
    expect(timing(37).is_a?(String)).to be true
    expect(timing(37)).to eq '37 seconds'
  end
end

describe 'fifty_fifty' do
  before do
  end

  it 'should produce a string with the words returned capitalized' do
    expect(fifty_fifty.nil?).to be false
    expect([true, false].include?(fifty_fifty)).to be true
  end
end

describe 'fifty_fifty' do
  before do
  end

  it 'should produce true approx 50% of the time' do
    expect(fifty_fifty.nil?).to be false
    expect([true, false].include?(fifty_fifty)).to be true
    count = 0
    100.times do
      count += 1 if fifty_fifty
    end
    expect(count).to be >= 40
    expect(count).to be <= 60
  end
end

describe 'one_third' do
  before do
  end

  it 'should produce true approx 33% of the time' do
    expect(one_third.nil?).to be false
    expect([true, false].include?(one_third)).to be true
    count = 0
    100.times do
      count += 1 if one_third
    end
    expect(count).to be >= 23
    expect(count).to be <= 43
  end
end

describe 'coin_flip' do
  before do
  end

  it 'should produce heads approx 50% of the time' do
    expect(coin_flip.nil?).to be false
    expect(%w[heads tails].include?(coin_flip)).to be true
    count = 0
    100.times do
      count += 1 if coin_flip == 'heads'
    end
    expect(count).to be >= 40
    expect(count).to be <= 60
  end
end
