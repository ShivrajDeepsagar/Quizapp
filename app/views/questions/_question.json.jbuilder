json.extract! question, :id, :title, :kind, :quiz_id, :created_at, :updated_at
json.url question_url(question, format: :json)
