task default: %w[homeoffice]

task :homeoffice do
  if Time.now.monday?
    ruby "bin/home-office.rb"
  elsif Time.now.tuesday?
    ruby "bin/home-office.rb"
  elsif Time.now.wednesday?
    ruby "bin/home-office.rb"
  elsif Time.now.thursday?
    ruby "bin/home-office.rb"
  elsif Time.now.friday?
    ruby "bin/home-office.rb"
  end
end