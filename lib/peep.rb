require 'pg'
class Peep
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter1_test')
    else
      connection = PG.connect(dbname: 'chitter1')
    end
    result = connection.exec('SELECT * FROM peeps')
    result.map { |peep| peep['message'] }
  end

  def self.create(options)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter1_test')
    else
      connection = PG.connect(dbname: 'chitter1')
    end

    connection.exec("INSERT INTO peeps (message) VALUES('#{options[:mes]}')")
  end
end
