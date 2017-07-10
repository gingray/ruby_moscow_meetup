require_relative '../passport/passport_nodes.rb'

class Parser
  Treetop.load(File.expand_path('../passport/passport.treetop', __FILE__))
  @parser = PassportParser.new

  def self.parse template
    tree = @parser.parse template
    raise Parser::TemplateError, "Parser error at offset: #{@parser.index} failure reason: #{@parser.failure_reason}" if tree.nil?
    tree
  rescue Parser::TemplateError => e
    [nil, e.message]
  end
end

class Parser::TemplateError < StandardError; end
