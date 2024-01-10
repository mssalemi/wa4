# This is an autogenerated file for dynamic methods in ExerciseHistory
# Please rerun bundle exec rake rails_rbi:models[ExerciseHistory] to regenerate.

# typed: strong
module ExerciseHistory::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ExerciseHistory::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(T.nilable(Date)) }
  def date; end

  sig { params(value: T.nilable(Date)).void }
  def date=(value); end

  sig { returns(T::Boolean) }
  def date?; end

  sig { returns(Integer) }
  def exercise_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def exercise_id=(value); end

  sig { returns(T::Boolean) }
  def exercise_id?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(T.any(T::Array[T.untyped], T::Boolean, Float, T::Hash[T.untyped, T.untyped], Integer, String))) }
  def performance_data; end

  sig { params(value: T.nilable(T.any(T::Array[T.untyped], T::Boolean, Float, T::Hash[T.untyped, T.untyped], Integer, String))).void }
  def performance_data=(value); end

  sig { returns(T::Boolean) }
  def performance_data?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end

  sig { returns(Integer) }
  def user_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def user_id=(value); end

  sig { returns(T::Boolean) }
  def user_id?; end

  sig { returns(Integer) }
  def workout_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def workout_id=(value); end

  sig { returns(T::Boolean) }
  def workout_id?; end
end

module ExerciseHistory::GeneratedAssociationMethods
  sig { returns(::Exercise) }
  def exercise; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Exercise).void)).returns(::Exercise) }
  def build_exercise(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Exercise).void)).returns(::Exercise) }
  def create_exercise(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Exercise).void)).returns(::Exercise) }
  def create_exercise!(*args, &block); end

  sig { params(value: ::Exercise).void }
  def exercise=(value); end

  sig { returns(::Exercise) }
  def reload_exercise; end

  sig { returns(::User) }
  def user; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def build_user(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_user(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::User).void)).returns(::User) }
  def create_user!(*args, &block); end

  sig { params(value: ::User).void }
  def user=(value); end

  sig { returns(::User) }
  def reload_user; end

  sig { returns(::Workout) }
  def workout; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Workout).void)).returns(::Workout) }
  def build_workout(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Workout).void)).returns(::Workout) }
  def create_workout(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Workout).void)).returns(::Workout) }
  def create_workout!(*args, &block); end

  sig { params(value: ::Workout).void }
  def workout=(value); end

  sig { returns(::Workout) }
  def reload_workout; end
end

module ExerciseHistory::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ExerciseHistory]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ExerciseHistory]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ExerciseHistory]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(ExerciseHistory)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ExerciseHistory) }
  def find_by_id!(id); end
end

class ExerciseHistory < ApplicationRecord
  include ExerciseHistory::GeneratedAttributeMethods
  include ExerciseHistory::GeneratedAssociationMethods
  extend ExerciseHistory::CustomFinderMethods
  extend ExerciseHistory::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ExerciseHistory::ActiveRecord_Relation, ExerciseHistory::ActiveRecord_Associations_CollectionProxy, ExerciseHistory::ActiveRecord_AssociationRelation) }
end

module ExerciseHistory::QueryMethodsReturningRelation
  sig { returns(ExerciseHistory::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ExerciseHistory::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: ExerciseHistory).returns(T::Boolean)).returns(T::Array[ExerciseHistory]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(ExerciseHistory::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(ExerciseHistory::ActiveRecord_Relation) }
  def where_missing(*args); end

  sig { params(column: Symbol, values: T::Array[T.untyped]).returns(ExerciseHistory::ActiveRecord_Relation) }
  def in_order_of(column, values); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ExerciseHistory::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ExerciseHistory::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ExerciseHistory::QueryMethodsReturningAssociationRelation
  sig { returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ExerciseHistory::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: ExerciseHistory).returns(T::Boolean)).returns(T::Array[ExerciseHistory]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: Symbol).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def where_missing(*args); end

  sig { params(column: Symbol, values: T::Array[T.untyped]).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def in_order_of(column, values); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ExerciseHistory::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ExerciseHistory::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class ExerciseHistory::ActiveRecord_Relation < ActiveRecord::Relation
  include ExerciseHistory::ActiveRelation_WhereNot
  include ExerciseHistory::CustomFinderMethods
  include ExerciseHistory::QueryMethodsReturningRelation
  Elem = type_member {{fixed: ExerciseHistory}}
end

class ExerciseHistory::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ExerciseHistory::ActiveRelation_WhereNot
  include ExerciseHistory::CustomFinderMethods
  include ExerciseHistory::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: ExerciseHistory}}
end

class ExerciseHistory::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ExerciseHistory::CustomFinderMethods
  include ExerciseHistory::QueryMethodsReturningAssociationRelation
  Elem = type_member {{fixed: ExerciseHistory}}

  sig { params(records: T.any(ExerciseHistory, T::Array[ExerciseHistory])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ExerciseHistory, T::Array[ExerciseHistory])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ExerciseHistory, T::Array[ExerciseHistory])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ExerciseHistory, T::Array[ExerciseHistory])).returns(T.self_type) }
  def concat(*records); end
end
