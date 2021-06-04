# Notes

Notes and key things to remember taken throughout the course:

* REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions
resources provides REST-ful routes to Rails resources

* When calling on an object instance in an html file through an ERB tag, Rails has some default code to be aware about. For example, when linking to an article instance, this line `article_path(article.id)` can be defaulted to simply `article_path(article)`, it is assumed intent to link to the article with that ID. Another default, when calling a method an instance, the default assumed method is `GET`. I.e., when trying to link to a single article, this `article_method(article), method: :get` could be shortened to `article_path(article)`. For other methods, like delete for exmaple, it is still necesary to call `method: :delete`
