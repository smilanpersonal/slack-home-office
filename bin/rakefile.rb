task default: %w[homeoffice]

task :homeoffice do
  if Time.now.monday?
    ruby "home-office.rb"
  elsif Time.now.tuesday?
    ruby "home-office.rb"
  elsif Time.now.wednesday?
    ruby "home-office.rb"
  elsif Time.now.thursday?
    ruby "home-office.rb"
  elsif Time.now.friday?
    ruby "home-office.rb"
  end
end