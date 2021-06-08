# Notes

Notes and key things to remember taken throughout the course:

* REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions
resources provides REST-ful routes to Rails resources

* When calling on an object instance in an html file through an ERB tag, Rails has some default code to be aware about of
  * For example, when linking to an article instance, this line `article_path(@article.id)` can be defaulted to simply `article_path(@article)`, it is assumed intent to link to the article with that ID
  * Another default, when calling a method an instance, the default assumed method is `GET`. I.e., when trying to link to a single article, this `article_method(@article), method: :get` could be shortened to `article_path(@article)`. For other methods, like DELETE for exmaple, it is still necesary to call `method: :delete`
  * For similar actions, like PUT & PATCH, the action can be called as part of the article path term `edit_article_path(@article)`

* DRY Code: Partials are used to extract redundant or bulky code from a file, and make resusable
  * an example of a partial can be seen in the `views/layouts/application.html.erb` file, where the HTML tag for creating flash messages is rendered using a partial. The partial file is in the same folder under `views/layouts/_messages.html.erb`

* Example of how to put a link in an HTML (html.erb) page view file, to navigate to another page. In this example, to the Articles listing page, `<%= link_to 'Articles listing', articles_path %>`

* Styling reminder: In CSS `.` is for a class, and `#` is for an ID

* Add notes here
