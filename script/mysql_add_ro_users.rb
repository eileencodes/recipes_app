require "mysql2"
require "active_record"

@db_host = "localhost"
@db_user = "root"

client = Mysql2::Client.new(:host => @db_host, :username => @db_user)

client.query("grant select on recipes_app_development.* to 'recipes_app_ro_user'@'localhost';")
client.query("grant select on recipes_meals_development.* to 'recipes_meals_ro_user'@'localhost';")
client.query("grant select on recipes_desserts_development.* to 'recipes_desserts_ro_user'@'localhost';")
client.query("grant select on recipes_app_test.* to 'recipes_app_ro_user'@'localhost';")
client.query("grant select on recipes_meals_test.* to 'recipes_meals_ro_user'@'localhost';")
client.query("grant select on recipes_desserts_test.* to 'recipes_desserts_ro_user'@'localhost';")
client.query("flush privileges;")
puts "Done adding users."
client.close
