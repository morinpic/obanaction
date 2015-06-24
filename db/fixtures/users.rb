User.seed do |s|
  s.id    = 1
  s.email = "obana@obanaction.com"
  s.encrypted_password = "obanaction"
  s.created_at = Date.today - (1 % 20)
  s.last_sign_in_at = Date.yesterday
end
