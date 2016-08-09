Rails
=====

Rails is a web application development framework written in the Ruby language. It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It allows you to write less code while accomplishing more than many other languages and frameworks. Experienced Rails developers also report that it makes web application development more fun.

#### MVC
![mvc](/images/rails_mvc.png)
![mvc](/images/rails_mvc_2.png)

#### Routes
The Rails router recognizes URLs and dispatches them to a controller's action. It can also generate paths and URLs, avoiding the need to hardcode strings in your views.

#### Migrations
Migrations are a convenient way to alter your database schema over time in a consistent and easy way. They use a Ruby DSL so that you don't have to write SQL by hand, allowing your schema and changes to be database independent.

#### Asset pipeline
The asset pipeline provides a framework to concatenate and minify or compress JavaScript and CSS assets. It also adds the ability to write these assets in other languages and pre-processors such as CoffeeScript, Sass and ERB. It allows assets in your application to be automatically combined with assets from other gems.

#### Callbacks

* Creating an Object
before_validation
after_validation
before_save
around_save
before_create
around_create
after_create
after_save
after_commit/after_rollback

* Updating an Object
before_validation
after_validation
before_save
around_save
before_update
around_update
after_update
after_save
after_commit/after_rollback

* Destroying an Object
before_destroy
around_destroy
after_destroy
after_commit/after_rollback

#### Creating an application
```
$ rails new <application_name>
$ rails server
```

... from http://guides.rubyonrails.org/
