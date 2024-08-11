class Db
  def add(name, x, y)
    file_path = (__dir__ + "/../cities.txt")
    File.write(file_path, "#{name},#{x},#{y}\n", mode: "a")
  end

  def read_find(city)
    file_path = (__dir__ + "/../cities.txt")
    file = File.open(file_path, "r")
    file.readlines.each do |row|
      line = row.chomp
      data = line.split(",")
      if data[0] == city
        return [data[1].to_i, data[2].to_i]
      end
    end

    file.close
  end
end

print Db.new.read_find("bangladesh")
