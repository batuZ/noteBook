# ruby_代码块.rb
# 代码块是为了方法能够根据环境，追加的一段可以有参有返的代码
# 当方法执行到块变量时会停下来，先去执行代码块的内容
# 当实现目的不同，但代码内容只有很小差别时，可以用代码块解决重复问题
# 在Ruby中，代码块不仅可用于循环，还可用于延迟执行，即代码块中的行为只有等到调用相关的yield时才会执行。
# 代码块充斥于Ruby的各种库，小到文件的每一行，大到在集合上进行各种复杂操作，都是由代码块来完成的。

def func1 
	yield 'ffff'
end
func1 do |d|
	p 'ddddddd' + d
end
# => "dddddddffff"



def func2
	yield 88
end
func2{|r|  
	p r*3
	p r/22
}
# => 264
# => 4