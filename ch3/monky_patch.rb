class String
  def red; colorize(self, "\e[1m\e[31m"); end
  def dark_red; colorize(self, "\e[31m"); end
  def green; colorize(self, "\e[1m\e[32m"); end
  def dark_green; colorize(self, "\e[32m"); end
  def yellow; colorize(self, "\e[1m\e[33m"); end
  def dark_yellow; colorize(self, "\e[33m"); end
  def blue; colorize(self, "\e[1m\e[34m"); end
  def dark_blue; colorize(self, "\e[34m"); end
  def purple; colorize(self, "\e[1m\e[35m"); end
  def dark_purple; colorize(self, "\e[35m"); end
  def cyan; colorize(self, "\e[1m\e[36m"); end
  def dark_cyan; colorize(self, "\e[36m"); end
  def black; colorize(self, "\e[30m"); end
  def grey; colorize(self, "\e[90m"); end
  def white; colorize(self, "\e[37m"); end
  def reset; colorize(self, "\e[0m\e[28m"); end
  def bold; colorize(self, "\e[1m"); end
  def colorize(text, color_code) "#{color_code}#{text}\e[0m" end
end

colors = %w[red dark_red green dark_green yellow dark_yellow blue dark_blue purple dark_purple
cyan dark_cyan black grey white reset bold
]

colors.each {|color| puts "My color is : #{color.capitalize.send(color)}"}
