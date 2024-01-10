# typed: strict

module WorkoutBuilder
    class WorkoutBuilderExercise
        extend T::Sig

        Goal = T.type_alias { { weight: T.nilable(Integer), reps: T.nilable(Integer), sets: T.nilable(Integer) } }

        sig { returns(Integer) }
        attr_reader :exercise_id

        sig { returns(Goal) }
        attr_reader :goal


        sig { params(exercise_id: Integer, goal: Goal).void }
        def initialize(exercise_id:, goal:)
            @exercise_id = exercise_id
            @goal = goal
        end

        sig { returns(T.nilable(Exercise)) }
        def exercise
            exercise = Exercise.find(@exercise_id)

            exercise
        end
    end 
end
