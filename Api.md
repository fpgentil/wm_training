API - Application Programming Interface
=======================================

In computer programming, an application programming interface (API) is a set of routine definitions,
protocols, and tools for building software and applications.
https://en.wikipedia.org/wiki/Application_programming_interface

# REST (representational state transfer)
Its purpose is to induce performance, scalability, simplicity, modifiability, visibility,
portability, and reliability

# RESTful
Systems typically, but not always, communicate over Hypertext Transfer Protocol (HTTP) with the same
HTTP verbs (GET, POST, PUT, DELETE, etc.) that web browsers use to retrieve web pages and to send
data to remote servers

# Uniform Resource Identifiers
```
$ bin/rails routes
      Prefix Verb   URI Pattern                  Controller#Action
    articles GET    /articles(.:format)          articles#index
             POST   /articles(.:format)          articles#create
 new_article GET    /articles/new(.:format)      articles#new
edit_article GET    /articles/:id/edit(.:format) articles#edit
     article GET    /articles/:id(.:format)      articles#show
             PATCH  /articles/:id(.:format)      articles#update
             PUT    /articles/:id(.:format)      articles#update
             DELETE /articles/:id(.:format)      articles#destroy
        root GET    /                            welcome#index
```

# Diferentes Arquiteturas

* Client–server
* Stateless
* Cacheable
* Layered system
* Client-side scripting

# JSON API

* http://jsonapi.org/
* ![Json schema](/files/json_schema)
