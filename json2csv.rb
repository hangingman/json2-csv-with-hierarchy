require "json"

class Json2Csv
  def initialize
    @output_csv = []
  end

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
      @output_csv << "#{prefix},#{json}"[1..-1]
    end
  end

  def json2csv(json_str)
    hash = JSON.parse(json_str)
    rec(hash, "")
    @output_csv.join("\n")
  end
end
