json.extract! request_equipmet, :id, :username, :equipment, :no_of_units, :faculty_in_charge, :created_at, :updated_at
json.url request_equipmet_url(request_equipmet, format: :json)
