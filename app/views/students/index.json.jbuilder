json.array!(@students) do |student|
  json.extract! student, :name, :registration_number, :email, :mobile, :school, :tuition_fee
  json.url student_url(student, format: :json)
end
