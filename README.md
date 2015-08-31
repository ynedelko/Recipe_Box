# _Recipe Box_
##### First practice of many to many with Active Record: App allows users to keep track of recipes.

#### By _**Yelena Nedelko and Lindsay Culver**_

## Description

_Users can:_

* _Add a recipe with ingredients._
* _Update and delete recipes._
* _View a list of ingredients for a recipe._
* _Add categories (tags) and receipes with different categories. A recipe can have many tags and a tag can have many recipes._
* _Update and delete tags, so they can have flexibility with how they categorize recipes._

## Technology Used
* _Ruby_
* _Sinatra_
* _RSpec_
* _Capybara_
* _Postgres_
* _Rake_
* _Active Record_
* _Shoulda-matchers_

## Database Setup/ Installation

_In rake:_<br>
_db:migrate_<br>
_all database tables listed in schema.rb_
<br>

_Webserver testing:_
* _Install required gems_
* _$ bundle install_
* _rake db:test:prepare_
* _$ ruby app.rb_
* _Navigate to localhost:4567_

### Legal

Copyright (c) 2015 **_Yelena Nedelko_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

