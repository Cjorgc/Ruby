require "sqlite3"

$db = sqlite3::Database.new('Development.db') 

module Database
    def self.create_user_table
        sql = "CREATE TABLE IF NOT EXIST users (id INTEGER PRIMARY KEY,
                                                name VARCHAR(256), 
                                                lastname VARCHAR(256), 
                                                username VARCHAR(256),
                                                password VARCHAR(256),
                                                token VARCHAR(256))"
        $db.execute(sql)
    end
    
    self.insert (table, args)
        keys = args.keys.join(', ')
        values = [['?'] * args.size].join(", ") 
        sql = "INSERT INTO #{table} (#{keys}) VALUES (#{values})"
        $db.execute(sql)

end
