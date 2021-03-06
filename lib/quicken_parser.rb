require "rexml/document"
require "rexml/xpath"
Dir[File.dirname(__FILE__) + "/**/*.rb"].each {|f| require f}

require "money"

module QuickenParser
  def self.parse(stream_or_string)
    Parser.new(stream_or_string).parse.accounts
  end
end
