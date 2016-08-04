Ruby
====

# /ˈruːbi/

..is a dynamic, open source programming language with a focus on simplicity and productivity.
It has an elegant syntax that is natural to read and easy to write.

https://www.ruby-lang.org/en/documentation/

#### Diferentes versões de ruby

* rvm (https://rvm.io)
* rbenv (https://rbenv.org)

#### IRB
```
$ irb
```

#### Métodos
```
def hello_world
  puts "Hello World"
end

def ready?
end

def make_it_ready!
end
```

#### if / unless
```
value = 1
if value == 1
  puts 'é um'
end

value = 2
puts 'não é um' unless value == 1
```

#### loops

```
array = [1,2,3,4]
array.each do |elem|
  puts elem
end
```

#### or || && and
or, and => fluxo de controle
&&, || => operações true/false
```
foo = 42 && foo / 2
foo = 42 and foo / 2

foo = get_foo or raise "get_foo falhou"

valor = 1
foo = valor || 2

valor2 = nil
foo2 = valor2 || 2
```

#### ||=
```
name = 'Felipe'
name ||= 'Gabriela'
puts name

another_name ||= 'Gabriela'
puts another_name
```

#### Hash
```
hash = { key: 'value' }
```

#### Array
```
arr = [1, 2, 3]

arr2 = [1, 'string', 1.5]
```

#### Symbols
```
name = :felipe

# :felipe = name
# invalid

hash = { :key => 'value' }
```

#### map
```
array = [1, 2, 3, 4]

array.map do |elem|
  elem += 1
end

# [2, 3, 4, 5]
```

#### reduce / inject
```
array.reduce do |mem, value|
  value += mem
end

array.reduce(:+)

# 10
```

#### Classes
```
class Person
  attr_reader :cpf
  attr_writer :age
  attr_accessor :name

  def initialize(name, age, cpf)
    @cpf = cpf
    @age = age
    @name = name
  end
end
```

#### Opening Classes
```
21.multiple_of?(3)

class Integer
  def multiple_of?(value)
    (self % number).zero?
  end
end
```

#### Gems
* Código ruby pra ser reutilizável
* Normalmente open-source
* http://rubygems.org/

#### Rails
* http://rubyonrails.org/

#### Testes
* Rspec
* Minitest
