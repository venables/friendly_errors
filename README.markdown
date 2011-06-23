# friendly_errors

friendly_errors handles rails errors without showing the "Sorry, something went wrong" page.

## So far ...

* On ActiveRecord::RecordNotFound, it shows a 404 page
* On ActionController::RedirectBackError, it redirects to the root URL.

## Installation

Add `gem "friendly_errors"` to your Gemfile and run `bundle install`

Then:

In your `ApplicationController`, put:

    class ApplicationController < ActionController::Base
      include FriendlyErrors
      use_friendly_errors
      ...
    end


## Project TODOs:

* Allow activation/deactivation of specific error handlers
* Customize redirect URL for RedirectBackError

## Contributing to friendly_errors
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Matt Venables. See LICENSE.txt for further details.

