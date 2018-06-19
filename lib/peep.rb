require 'pg'
class Peep
  def self.all
    connection = PG.connect(dbname: 'chitter1')
    result = connection.exec('SELECT * FROM peeps')
    result.map { |peep| peep['message'] }
  end
end
