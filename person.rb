# 定义一个类
class Person
  # 属性访问器：用于限制属性的访问权限和范围
  attr_accessor(:name, :age, :gender) # 在外部可读可写
  attr_reader(:only_read_attr)  # 在外部只可读
  attr_writer(:only_writer_attr) # 在外部只可写

  # 初始化方法，类似于Java中的构造方法
  # 在创建对象时会自动调用
  def initialize(name="Anonymous", age=18, gender="Male")
    @name = name
    @age = age
    @gender = gender
    @only_read_attr = "only read"
  end

  # 一些其他自定义方法
  def who_i_am
    puts "I am #{@name}, #{@age} years old. "
    puts "And I am girl." if @gender == "Female"
    puts "And I am boy." if @gender == "Male"
  end

end

# 创建对象，并调用方法
anonymous=Person.new
# anonymous.who_i_am
andy=Person.new("Andy", "", "Female")
# andy.who_i_am
mike=Person.new("Mike", 22, "Male")
# mike.who_i_am

# 访问实例的只读属性
puts andy.only_read_attr
# 为实例的可写属性赋值
andy.only_writer_attr = "only writer"
