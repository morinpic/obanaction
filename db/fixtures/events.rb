require 'csv'

csv = CSV.read('db/fixtures/csv/events.csv')
csv.each_with_index do |row, i|
  next if i.zero?
  Event.seed do |s|
    s.id = i
    s.owner_id = row[1]
    s.name = row[2]
    s.place = row[3]
    s.start_time= row[4]
    s.end_time = row[5]
    s.content = row[6]
    s.image = Rails.root.join(row[7]).open if row[7].present?
    s.created_at = Date.today - (i % 20)
  end
end
