Factory.define :user do |user|
  user.username "John"
  user.email "john@chances4u.org"
end

Factory.define :list do |list|
  list.title "Liste"
end

Factory.define :entry do |e|
  e.title "Entry"
end

