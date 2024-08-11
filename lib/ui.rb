class Ui
  def input
    user_in = STDIN.gets.chomp
    return user_in
  end

  def output(temp, city)
    puts "в вашем городе #{city} температура воздуха #{temp}"
  end
end
