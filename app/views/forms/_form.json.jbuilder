json.extract! form, :id, :title, :comment, :created_at, :updated_at
json.url form_url(form, format: :json)