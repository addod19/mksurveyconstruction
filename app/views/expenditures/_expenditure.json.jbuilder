json.extract! expenditure, :id, :title, :amount, :category, :spent_on, :notes, :created_at, :updated_at
json.url expenditure_url(expenditure, format: :json)
