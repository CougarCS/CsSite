require 'test_helper'

class TutoringTeachersControllerTest < ActionController::TestCase
  setup do
    @tutoring_teacher = tutoring_teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutoring_teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutoring_teacher" do
    assert_difference('TutoringTeacher.count') do
      post :create, tutoring_teacher: { date: @tutoring_teacher.date, member_id: @tutoring_teacher.member_id, note: @tutoring_teacher.note }
    end

    assert_redirected_to tutoring_teacher_path(assigns(:tutoring_teacher))
  end

  test "should show tutoring_teacher" do
    get :show, id: @tutoring_teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutoring_teacher
    assert_response :success
  end

  test "should update tutoring_teacher" do
    patch :update, id: @tutoring_teacher, tutoring_teacher: { date: @tutoring_teacher.date, member_id: @tutoring_teacher.member_id, note: @tutoring_teacher.note }
    assert_redirected_to tutoring_teacher_path(assigns(:tutoring_teacher))
  end

  test "should destroy tutoring_teacher" do
    assert_difference('TutoringTeacher.count', -1) do
      delete :destroy, id: @tutoring_teacher
    end

    assert_redirected_to tutoring_teachers_path
  end
end
