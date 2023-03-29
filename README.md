# Fortune Teller - Camille Arce

## Setup

1. Start the web server by running `bin/server`.
1. Navigate to your live application preview.
1. As you work, remember to navigate to `/git` and **commit often as you work.**
1. Run `rails grade` as often as you like to see how you are doing, but **make sure you test your app manually first to make sure it matches the target's behavior first**.

## Target

Here is your target:

[https://fortune-teller.matchthetarget.com](https://fortune-teller.matchthetarget.com)


## First task: study `/lottery/lucky`

This app currently supports one URL: `/lottery/lucky`

Follow the R→C→A→V through and study how it works, from `config/routes.rb` through the `app/controllers/` folder, and finally to a template within `app/views/`. Use the [RPS RCAV slides](https://slides.com/raghubetina/06-routing-rcav?token=43w7FD8Q), [Routing — RCAV chapter](https://chapters.firstdraft.com/chapters/779), and [RCAV Flowchart](https://chapters.firstdraft.com/chapters/882) as a reference.

Notice that this action is using a custom controller class, rather than the out-of-the-box `ApplicationController`. This helps us keep things organized in larger apps; we can create as many as we like, and have them _inherit_ from `ApplicationController`.

```ruby
# app/controllers/numbers_controller.rb

class NumbersController < ApplicationController
  # ...
```  

`app/views/lottery_stuff/woohoo.html.erb` demonstrates how to do a `.each` loop within a `.html.erb` embedded Ruby template. Ask a question about _anything_ that you don't understand about this R→C→A→V.

## Part 1: Build `/lottery/unlucky`

Implement the URL `/lottery/lucky`.

See [the target](https://fortune-teller.matchthetarget.com) for behavior.

## Part 2: Debug zodiacs

In the nav, there are links to `/zodiacs/leo`, `/zodiacs/cancer`, etc; one for each of the [twelve Western zodiac signs](https://en.wikipedia.org/wiki/Astrological_sign#Western_zodiac_signs).

Currently, none of them work. In `config/routes.rb`, you'll see that I've added 12 routes but commented them all out. Each RCAV is broken in some way(s).

Uncomment each one *ONE AT A TIME* and make it work like the target.

Let me say that again:

**Uncomment each route ONE AT A TIME and debug it ONE AT A TIME.** Don't uncomment multiple at once, or you'll have multiple syntax errors at once and the error messages can't help you.

**YOUR JOB:** Debug all 12 RCAVs.

Debugging checklist:

 1. READ the error message. Extract as much useful information from it as possible.
 2. If there's no error message, find another way to give yourself feedback; **make the invisible visible**.
    - Use the server log.
    - Print things; in this new world, that means use embedded Ruby tags (`<%=  %>`) in the view templates. We can't use the `p` method anymore since we aren't writing command line programs anymore.
 3. If all else fails — the error message isn't helpful, or there isn't one and you can't spot the issue visually — delete the offending code (or comment it out), and re-type the R→C→A→V from scratch. Hopefully you've been making lots of git commits, so there's no fear in doing so.

## Part 3: More R→C→A→V Practice

In the nav, there are links to 18 pages that simulate rolling dice in various combinations that are useful for board games (six-sided dice, from one die up to six dice) and other, more exotic dice combinations that are useful for e.g. [Dungeons & Dragons](https://en.wikipedia.org/wiki/Dungeons_%26_Dragons#Game_mechanics).

Right now, none of those URLs work; and the routes don't even exist. Implement them, one at a time. Try to type them out rather than copy-pasting; the point is to build muscle memory and encounter error messages in a controlled setting.

There are no automated tests for Part 3; this is just extra reps for practice.

## Reflections

 - Of the error messages that you encountered during debugging, which ones were most helpful? Which ones were least helpful?
 - In this project, the subfolders within `app/views` that we store our ERB templates in had various different suffixes:
    - `app/views/lottery_stuff/`
    - `app/views/flame_interface/`
    - `app/views/nature_templates/`
    - `app/views/wind_html/`
    - `app/views/aqua/` (no suffix)

    If you had to pick one style for us to use consistently in the future, which do you prefer? Or can you think of a different subfolder naming convention that you would prefer more?
 - You now know how to respond to visits to URLs with dynamically generated HTML. This is, fundamentally, how Twitter, GitHub, Basecamp, NYTimes, Airbnb, and every other web application works. But, of course, we have a lot more to learn before we could build, for example, a social network.

    What are we still missing? What are you most curious to learn next?
