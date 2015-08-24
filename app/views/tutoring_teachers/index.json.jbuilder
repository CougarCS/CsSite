json.array!(@tutoring_teachers) do |tutoring_teacher|
  json.extract! tutoring_teacher, :id, :member_id, :note, :date
  json.url tutoring_teacher_url(tutoring_teacher, format: :json)
end
