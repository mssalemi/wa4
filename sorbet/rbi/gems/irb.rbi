# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/irb/all/irb.rbi
#
# irb-1.11.1

module IRB
end
module IRB::NestingParser
  def self.open_tokens(tokens); end
  def self.parse_by_line(tokens); end
  def self.scan_opens(tokens); end
end
class IRB::RubyLex
  def assignment_expression?(code, local_variables:); end
  def calc_indent_level(opens); end
  def check_code_state(code, local_variables:); end
  def check_code_syntax(code, local_variables:); end
  def check_termination_in_prev_line(code, local_variables:); end
  def code_terminated?(code, tokens, opens, local_variables:); end
  def free_indent_token?(token); end
  def indent_difference(lines, line_results, line_index); end
  def ltype_from_open_tokens(opens); end
  def process_indent_level(tokens, lines, line_index, is_newline); end
  def self.compile_with_errors_suppressed(code, line_no: nil); end
  def self.generate_local_variables_assign_code(local_variables); end
  def self.interpolate_ripper_ignored_tokens(code, tokens); end
  def self.ripper_lex_without_warning(code, local_variables: nil); end
  def should_continue?(tokens); end
end
class IRB::RubyLex::TerminateLineInput < StandardError
  def initialize; end
end
module IRB::Color
  def self.clear(colorable: nil); end
  def self.colorable?; end
  def self.colorize(text, seq, colorable: nil); end
  def self.colorize_code(code, complete: nil, ignore_error: nil, colorable: nil, local_variables: nil); end
  def self.dispatch_seq(token, expr, str, in_symbol:); end
  def self.inspect_colorable?(obj, seen: nil); end
  def self.scan(code, allow_last_error:); end
  def self.without_circular_ref(obj, seen:, &block); end
end
class IRB::Color::SymbolState
  def initialize; end
  def scan_token(token); end
end
class IRB::ColorPrinter < PP
  def pp(obj); end
  def self.pp(obj, out = nil, width = nil); end
  def self.screen_width; end
  def text(str, width = nil); end
end
class IRB::WorkSpace
end
class IRB::Inspector
end
class IRB::BaseCompletor
end
class IRB::TypeCompletor < IRB::BaseCompletor
end
class IRB::RegexpCompletor < IRB::BaseCompletor
end
module IRB::InputCompletor
end
module IRB::HistorySavingAbility
end
class IRB::InputMethod
end
class IRB::StdioInputMethod < IRB::InputMethod
end
class IRB::FileInputMethod < IRB::InputMethod
end
class IRB::ReadlineInputMethod < IRB::StdioInputMethod
  include IRB::HistorySavingAbility
end
class IRB::RelineInputMethod < IRB::StdioInputMethod
  include IRB::HistorySavingAbility
end
class IRB::ReidlineInputMethod < IRB::RelineInputMethod
end
class IRB::OutputMethod
end
class IRB::OutputMethod::NotImplementedError < StandardError
end
class IRB::StdioOutputMethod < IRB::OutputMethod
end
class IRB::Context
end
module IRB::ExtendCommandBundle
end
module IRB::ContextExtender
end
class IRB::Statement
end
class IRB::Statement::Expression < IRB::Statement
end
class IRB::Statement::Command < IRB::Statement
end
class IRB::Locale
end
class InvalidName___Class_0x00___Vec_42
end
class InvalidName___Class_0x00___Canvas_43
end
class InvalidName___Class_0x00___RubyModel_44
end
module IRB::Debug
end
module InvalidName___Class_0x00___SkipPathHelperForIRB_45
end
class IRB::Pager
end
class IRB::Abort < Exception
end
class IRB::Irb
end
class Binding
end
