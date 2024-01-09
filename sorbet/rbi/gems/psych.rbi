# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/psych/all/psych.rbi
#
# psych-5.1.2

module Psych
  def self.add_builtin_type(type_tag, &block); end
  def self.add_domain_type(domain, type_tag, &block); end
  def self.add_tag(tag, klass); end
  def self.config; end
  def self.domain_types; end
  def self.domain_types=(value); end
  def self.dump(o, io = nil, options = nil); end
  def self.dump_stream(*objects); end
  def self.dump_tags; end
  def self.dump_tags=(value); end
  def self.libyaml_version; end
  def self.load(yaml, permitted_classes: nil, permitted_symbols: nil, aliases: nil, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.load_file(path, *args); end
  def self.load_stream(yaml, filename: nil, fallback: nil, **kwargs); end
  def self.load_tags; end
  def self.load_tags=(value); end
  def self.parse(yaml, filename: nil); end
  def self.parse_file(filename, fallback: nil); end
  def self.parse_stream(yaml, filename: nil, &block); end
  def self.parser; end
  def self.remove_type(type_tag); end
  def self.safe_dump(o, io = nil, options = nil); end
  def self.safe_load(yaml, permitted_classes: nil, permitted_symbols: nil, aliases: nil, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.safe_load_file(filename, **kwargs); end
  def self.to_json(object); end
  def self.unsafe_load(yaml, filename: nil, fallback: nil, symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def self.unsafe_load_file(path, *args); end
end
class Psych::Exception < RuntimeError
end
class Psych::BadAlias < Psych::Exception
end
class Psych::AliasesNotEnabled < Psych::BadAlias
  def initialize; end
end
class Psych::AnchorNotDefined < Psych::BadAlias
  def initialize(anchor_name); end
end
class Psych::DisallowedClass < Psych::Exception
  def initialize(action, klass_name); end
end
class Psych::SyntaxError < Psych::Exception
  def column; end
  def context; end
  def file; end
  def initialize(file, line, col, offset, problem, context); end
  def line; end
  def offset; end
  def problem; end
end
class Psych::Parser
  def _native_parse(arg0, arg1, arg2); end
  def external_encoding=(arg0); end
  def handler; end
  def handler=(arg0); end
  def initialize(handler = nil); end
  def mark; end
  def parse(yaml, path = nil); end
end
class Psych::Emitter < Psych::Handler
  def alias(arg0); end
  def canonical; end
  def canonical=(arg0); end
  def end_document(arg0); end
  def end_mapping; end
  def end_sequence; end
  def end_stream; end
  def indentation; end
  def indentation=(arg0); end
  def initialize(*arg0); end
  def line_width; end
  def line_width=(arg0); end
  def scalar(arg0, arg1, arg2, arg3, arg4, arg5); end
  def start_document(arg0, arg1, arg2); end
  def start_mapping(arg0, arg1, arg2, arg3); end
  def start_sequence(arg0, arg1, arg2, arg3); end
  def start_stream(arg0); end
end
class Psych::Visitors::ToRuby < Psych::Visitors::Visitor
  def accept(target); end
  def build_exception(arg0, arg1); end
  def class_loader; end
  def deduplicate(key); end
  def deserialize(o); end
  def init_with(o, h, node); end
  def initialize(ss, class_loader, symbolize_names: nil, freeze: nil); end
  def merge_key(hash, key, val); end
  def register(node, object); end
  def register_empty(object); end
  def resolve_class(klassname); end
  def revive(klass, node); end
  def revive_hash(hash, o, tagged = nil); end
  def self.create(symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def visit_Psych_Nodes_Alias(o); end
  def visit_Psych_Nodes_Document(o); end
  def visit_Psych_Nodes_Mapping(o); end
  def visit_Psych_Nodes_Scalar(o); end
  def visit_Psych_Nodes_Sequence(o); end
  def visit_Psych_Nodes_Stream(o); end
end
class Psych::ClassLoader
  def big_decimal; end
  def complex; end
  def date; end
  def date_time; end
  def exception; end
  def find(klassname); end
  def initialize; end
  def load(klassname); end
  def object; end
  def path2class(arg0); end
  def psych_omap; end
  def psych_set; end
  def range; end
  def rational; end
  def regexp; end
  def resolve(klassname); end
  def struct; end
  def symbol; end
  def symbolize(sym); end
end
class Psych::Omap < Hash
end
class Psych::Set < Hash
end
class Psych::ClassLoader::Restricted < Psych::ClassLoader
  def find(klassname); end
  def initialize(classes, symbols); end
  def symbolize(sym); end
end
class Psych::ScalarScanner
  def class_loader; end
  def initialize(class_loader, strict_integer: nil); end
  def parse_int(string); end
  def parse_time(string); end
  def tokenize(string); end
end
module Psych::Nodes
end
class Psych::Nodes::Node
  def alias?; end
  def children; end
  def document?; end
  def each(&block); end
  def end_column; end
  def end_column=(arg0); end
  def end_line; end
  def end_line=(arg0); end
  def initialize; end
  def mapping?; end
  def scalar?; end
  def sequence?; end
  def start_column; end
  def start_column=(arg0); end
  def start_line; end
  def start_line=(arg0); end
  def stream?; end
  def tag; end
  def to_ruby(symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def to_yaml(io = nil, options = nil); end
  def transform(symbolize_names: nil, freeze: nil, strict_integer: nil); end
  def yaml(io = nil, options = nil); end
  include Enumerable
end
class Psych::Nodes::Stream < Psych::Nodes::Node
  def encoding; end
  def encoding=(arg0); end
  def initialize(encoding = nil); end
  def stream?; end
end
class Psych::Nodes::Document < Psych::Nodes::Node
  def document?; end
  def implicit; end
  def implicit=(arg0); end
  def implicit_end; end
  def implicit_end=(arg0); end
  def initialize(version = nil, tag_directives = nil, implicit = nil); end
  def root; end
  def tag_directives; end
  def tag_directives=(arg0); end
  def version; end
  def version=(arg0); end
end
class Psych::Nodes::Sequence < Psych::Nodes::Node
  def anchor; end
  def anchor=(arg0); end
  def implicit; end
  def implicit=(arg0); end
  def initialize(anchor = nil, tag = nil, implicit = nil, style = nil); end
  def sequence?; end
  def style; end
  def style=(arg0); end
  def tag; end
  def tag=(arg0); end
end
class Psych::Nodes::Scalar < Psych::Nodes::Node
  def anchor; end
  def anchor=(arg0); end
  def initialize(value, anchor = nil, tag = nil, plain = nil, quoted = nil, style = nil); end
  def plain; end
  def plain=(arg0); end
  def quoted; end
  def quoted=(arg0); end
  def scalar?; end
  def style; end
  def style=(arg0); end
  def tag; end
  def tag=(arg0); end
  def value; end
  def value=(arg0); end
end
class Psych::Nodes::Mapping < Psych::Nodes::Node
  def anchor; end
  def anchor=(arg0); end
  def implicit; end
  def implicit=(arg0); end
  def initialize(anchor = nil, tag = nil, implicit = nil, style = nil); end
  def mapping?; end
  def style; end
  def style=(arg0); end
  def tag; end
  def tag=(arg0); end
end
class Psych::Nodes::Alias < Psych::Nodes::Node
  def alias?; end
  def anchor; end
  def anchor=(arg0); end
  def initialize(anchor); end
end
module Psych::Streaming
  def register(target, obj); end
  def start(encoding = nil); end
end
module Psych::Streaming::ClassMethods
  def new(io); end
end
module Psych::Visitors
end
class Psych::Visitors::Visitor
  def accept(target); end
  def dispatch; end
  def self.dispatch_cache; end
  def visit(target); end
end
class Psych::Visitors::NoAliasRuby < Psych::Visitors::ToRuby
  def visit_Psych_Nodes_Alias(o); end
end
class Psych::Visitors::Emitter < Psych::Visitors::Visitor
  def initialize(io, options = nil); end
  def visit_Psych_Nodes_Alias(o); end
  def visit_Psych_Nodes_Document(o); end
  def visit_Psych_Nodes_Mapping(o); end
  def visit_Psych_Nodes_Scalar(o); end
  def visit_Psych_Nodes_Sequence(o); end
  def visit_Psych_Nodes_Stream(o); end
end
class Psych::Handler
  def alias(anchor); end
  def empty; end
  def end_document(implicit); end
  def end_mapping; end
  def end_sequence; end
  def end_stream; end
  def event_location(start_line, start_column, end_line, end_column); end
  def scalar(value, anchor, tag, plain, quoted, style); end
  def start_document(version, tag_directives, implicit); end
  def start_mapping(anchor, tag, implicit, style); end
  def start_sequence(anchor, tag, implicit, style); end
  def start_stream(encoding); end
  def streaming?; end
end
class Psych::Handler::DumperOptions
  def canonical; end
  def canonical=(arg0); end
  def indentation; end
  def indentation=(arg0); end
  def initialize; end
  def line_width; end
  def line_width=(arg0); end
end
class Psych::TreeBuilder < Psych::Handler
  def alias(anchor); end
  def end_document(implicit_end = nil); end
  def end_mapping; end
  def end_sequence; end
  def end_stream; end
  def event_location(start_line, start_column, end_line, end_column); end
  def initialize; end
  def pop; end
  def push(value); end
  def root; end
  def scalar(value, anchor, tag, plain, quoted, style); end
  def set_end_location(node); end
  def set_location(node); end
  def set_start_location(node); end
  def start_document(version, tag_directives, implicit); end
  def start_mapping(anchor, tag, implicit, style); end
  def start_sequence(anchor, tag, implicit, style); end
  def start_stream(encoding); end
end
class Psych::Visitors::YAMLTree < Psych::Visitors::Visitor
  def <<(object); end
  def accept(target); end
  def binary?(string); end
  def dump_coder(o); end
  def dump_exception(o, msg); end
  def dump_ivars(target); end
  def dump_list(o); end
  def emit_coder(c, o); end
  def finish; end
  def finished; end
  def finished?; end
  def format_time(time, utc = nil); end
  def initialize(emitter, ss, options); end
  def push(object); end
  def register(target, yaml_obj); end
  def self.create(options = nil, emitter = nil); end
  def start(encoding = nil); end
  def started; end
  def started?; end
  def tree; end
  def visit_Array(o); end
  def visit_BasicObject(o); end
  def visit_BigDecimal(o); end
  def visit_Class(o); end
  def visit_Complex(o); end
  def visit_Date(o); end
  def visit_DateTime(o); end
  def visit_Delegator(o); end
  def visit_Encoding(o); end
  def visit_Enumerator(o); end
  def visit_Exception(o); end
  def visit_FalseClass(o); end
  def visit_Float(o); end
  def visit_Hash(o); end
  def visit_Integer(o); end
  def visit_Module(o); end
  def visit_NameError(o); end
  def visit_NilClass(o); end
  def visit_Object(o); end
  def visit_Psych_Omap(o); end
  def visit_Psych_Set(o); end
  def visit_Range(o); end
  def visit_Rational(o); end
  def visit_Regexp(o); end
  def visit_String(o); end
  def visit_Struct(o); end
  def visit_Symbol(o); end
  def visit_Time(o); end
  def visit_TrueClass(o); end
  def visit_array_subclass(o); end
  def visit_hash_subclass(o); end
end
class Psych::Visitors::YAMLTree::Registrar
  def id_for(target); end
  def initialize; end
  def key?(target); end
  def node_for(target); end
  def register(target, node); end
end
class Psych::Visitors::RestrictedYAMLTree < Psych::Visitors::YAMLTree
  def accept(target); end
  def initialize(emitter, ss, options); end
  def visit_Symbol(sym); end
end
module Psych::JSON
end
module Psych::JSON::RubyEvents
  def visit_DateTime(o); end
  def visit_String(o); end
  def visit_Symbol(o); end
  def visit_Time(o); end
end
class Psych::Visitors::JSONTree < Psych::Visitors::YAMLTree
  def accept(target); end
  def self.create(options = nil); end
  include Psych::JSON::RubyEvents
end
class Psych::Visitors::DepthFirst < Psych::Visitors::Visitor
  def initialize(block); end
  def nary(o); end
  def terminal(o); end
  def visit_Psych_Nodes_Alias(o); end
  def visit_Psych_Nodes_Document(o); end
  def visit_Psych_Nodes_Mapping(o); end
  def visit_Psych_Nodes_Scalar(o); end
  def visit_Psych_Nodes_Sequence(o); end
  def visit_Psych_Nodes_Stream(o); end
end
class Anonymous_Struct_7 < Struct
  def column; end
  def column=(_); end
  def index; end
  def index=(_); end
  def line; end
  def line=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Psych::Parser::Mark < Anonymous_Struct_7
end
class Psych::Coder
  def [](k); end
  def []=(k, v); end
  def add(k, v); end
  def implicit; end
  def implicit=(arg0); end
  def initialize(tag); end
  def map(tag = nil, style = nil); end
  def map=(map); end
  def object; end
  def object=(arg0); end
  def represent_map(tag, map); end
  def represent_object(tag, obj); end
  def represent_scalar(tag, value); end
  def represent_seq(tag, list); end
  def scalar(*args); end
  def scalar=(value); end
  def seq; end
  def seq=(list); end
  def style; end
  def style=(arg0); end
  def tag; end
  def tag=(arg0); end
  def type; end
end
class Object < BasicObject
  def self.yaml_tag(url); end
  def to_yaml(options = nil); end
end
class Psych::Stream < Psych::Visitors::YAMLTree
  extend Psych::Streaming::ClassMethods
  include Psych::Streaming
end
class Psych::Stream::Emitter < Psych::Emitter
  def end_document(implicit_end = nil); end
  def streaming?; end
end
module Psych::JSON::YAMLEvents
  def end_document(implicit_end = nil); end
  def scalar(value, anchor, tag, plain, quoted, style); end
  def start_document(version, tag_directives, implicit); end
  def start_mapping(anchor, tag, implicit, style); end
  def start_sequence(anchor, tag, implicit, style); end
end
class Psych::JSON::TreeBuilder < Psych::TreeBuilder
  include Psych::JSON::YAMLEvents
end
class Psych::JSON::Stream < Psych::Visitors::JSONTree
  extend Psych::Streaming::ClassMethods
  include Psych::JSON::RubyEvents
  include Psych::Streaming
end
class Psych::JSON::Stream::Emitter < Psych::Stream::Emitter
  include Psych::JSON::YAMLEvents
end
module Psych::Handlers
end
class Psych::Handlers::DocumentStream < Psych::TreeBuilder
  def end_document(implicit_end = nil); end
  def initialize(&block); end
  def start_document(version, tag_directives, implicit); end
end
class InvalidName___Class_0x00___Config_8
  def domain_types; end
  def domain_types=(arg0); end
  def dump_tags; end
  def dump_tags=(arg0); end
  def initialize; end
  def load_tags; end
  def load_tags=(arg0); end
end
