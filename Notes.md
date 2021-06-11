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

* Example of how to put a link in an HTML (html.erb) page view file, to navigate to another page. In this example, the link navigates to the Articles listing page, `<%= link_to 'Articles listing', articles_path %>`. And in this example, to the Create new article page `<%= link_to 'Create new article', new_article_path %>`

* Styling reminder: In CSS `.` is for a class, and `#` is for an ID

* Shovel operator: `<<`. Is used to 'shovel' in an object to a db object, for example a User in a model table

* Reminder: When adding a new table (via `generate`) or editing an existing table, always remember to run a migration `rails db:migrate`, so that the changes to the table/model are reflected in the db

* Reminder: When deploying code do production (in this case Heroku), if changes have been made to the db tables the following migration must be run on the production terminal for the db changes to be reflected: `heroku run rails db:migrate`

* Rails uses a complete test suite called `Minitest` for TDD

* Add notes here
