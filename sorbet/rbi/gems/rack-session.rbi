# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rack-session/all/rack-session.rbi
#
# rack-session-2.0.0

module Rack
end
module Rack::Session
end
class Rack::Session::SessionId
end
module Rack::Session::Abstract
end
class Rack::Session::Abstract::SessionHash
  include Enumerable
end
class Rack::Session::Abstract::Persisted
end
class Rack::Session::Abstract::PersistedSecure < Rack::Session::Abstract::Persisted
end
class Rack::Session::Abstract::PersistedSecure::SecureSessionHash < Rack::Session::Abstract::SessionHash
end
class Rack::Session::Abstract::ID < Rack::Session::Abstract::Persisted
end
