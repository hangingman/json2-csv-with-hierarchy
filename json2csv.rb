require "json"

def rec(json, prefix)
  if json.class == Hash
    json.each do |key, value|
      rec(value, "#{prefix},#{key}")
    end
  elsif json.class == Array
    json.each do |item|
      rec(item, prefix)
    end
  else
    puts "#{prefix},#{json}"
  end
end

def json2csv(json_str)
  hash = JSON.parse(json_str)
  rec(hash, "")
end
