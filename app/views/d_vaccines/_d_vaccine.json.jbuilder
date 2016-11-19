json.extract! d_vaccine, :id, :vaccine, :date_taken, :retake, :created_at, :updated_at
json.url d_vaccine_url(d_vaccine, format: :json)