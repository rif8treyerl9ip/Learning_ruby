# 最もシンプルなホイールクラス
class Wheel
    attr_reader :size
  
    def initialize(size)
      @size = size
    end
  end

# 変数の定義
wheel = Wheel.new(26)
number = 26
text = "Hello"
decimal = 1.5

puts wheel.size

# 型の確認（基本的な方法）
puts "--- .classを使用した型確認 ---"
puts wheel.class    # => Wheel
puts number.class   # => Integer
puts text.class     # => String
puts decimal.class  # => Float

# クラスの継承関係を確認
puts "\n--- 継承関係の確認 ---"
puts Wheel.ancestors   # => [Wheel, Object, Kernel, BasicObject]

# 型チェックのメソッド
puts "\n--- instance_of?による型チェック ---"
puts wheel.instance_of?(Wheel)    # => true
puts number.instance_of?(Integer) # => true

puts "\n--- is_a?による型チェック（継承含む） ---"
puts wheel.is_a?(Object)         # => true