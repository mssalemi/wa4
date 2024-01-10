require 'rails_helper'

RSpec.describe WorkoutBuilder::WorkoutBuilderWorkout, type: :model do
  before do
    ### Create Exercise for Database
    @exercise = Exercise.create(
      title: 'Bench Press',
      description: 'Lie down on a flat bench',
    )

    ###
    @user = User.create(
      name: 'Test User',
    )

    @workout_exercise = WorkoutBuilder::WorkoutBuilderExercise.new(
      exercise_id: @exercise.id,
      goal: {
        weight: 275,
        reps: 1,
        sets: 1,
      },
    )

    @sample_goal = {
      weight: 275,
      reps: 1,
      sets: 1,
    }

    @workout = WorkoutBuilder::WorkoutBuilderWorkout.new

    Workout.create(
      title: 'Test Workout',
      user_id: @user.id,
    )
  end

  describe '#add_exercise' do
    it 'adds an exercise to the workout and completes workout' do
      assert_empty @workout.exercises

      @workout.add_exercise(exercise_id: @exercise.id, goal: @sample_goal)

      assert_equal 1, @workout.exercises.length
      assert_equal @exercise.id, @workout.exercises.first.exercise_id

      assert_equal @sample_goal[:weight], @workout.exercises.first.goal[:weight]
      assert_equal @sample_goal[:reps], @workout.exercises.first.goal[:reps]
      assert_equal @sample_goal[:sets], @workout.exercises.first.goal[:sets]

      assert ExerciseHistory.count == 0

      @workout.complete_workout

      assert ExerciseHistory.count == 1

      exercise_history = ExerciseHistory.first

      assert_equal @workout.exercises.first.goal[:weight], exercise_history.performance_data['weight']
      assert_equal @workout.exercises.first.goal[:reps], exercise_history.performance_data['reps']
      assert_equal @workout.exercises.first.goal[:sets], exercise_history.performance_data['sets']
    end
  end

  # describe '#remove_exercise' do
  #   it 'removes an exercise from the workout' do
  #     # Test for removing an exercise
  #   end
  # end

  # describe '#bulk_update_workout_goals' do
  #   it 'updates goals for multiple exercises' do
  #     # Test for bulk updating goals
  #   end
  # end

  # describe '#complete_workout' do
  #   it 'marks all exercises as complete' do
  #     # Test for completing the workout
  #   end
  # end
end
