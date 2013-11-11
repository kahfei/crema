json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :student_id, :subject_id
  json.url enrolment_url(enrolment, format: :json)
end
