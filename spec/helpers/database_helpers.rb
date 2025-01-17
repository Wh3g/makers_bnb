require "pg"

def truncate_test_data
  connection = PG.connect(dbname: 'makers_bnb_test')
  connection.exec("TRUNCATE TABLE listings;")
  connection.exec('TRUNCATE TABLE users;')
end

def persisted_data(table:, id:)
  PG.connect(dbname: 'makers_bnb_test').query("SELECT * FROM #{table} WHERE id = #{id};")
end

