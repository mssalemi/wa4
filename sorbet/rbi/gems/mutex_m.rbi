# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mutex_m/all/mutex_m.rbi
#
# mutex_m-0.2.0

module Mutex_m
  def initialize(*args); end
  def mu_extended; end
  def mu_initialize; end
  def mu_lock; end
  def mu_locked?; end
  def mu_synchronize(&block); end
  def mu_try_lock; end
  def mu_unlock; end
  def self.append_features(cl); end
  def self.define_aliases(cl); end
  def self.extend_object(obj); end
  def sleep(timeout = nil); end
end
