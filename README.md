# README

This is the backend for my Rails/JS project to fulfill requirements for my Flatiron Full-Stack Software Engineering Program. The frontend is [here](https://github.com/s-blais/javascript-portfolio-project-transactions-frontend).

I'm following the [Rails/JS project requirements for the more recent iteration of the software engineering program](https://github.com/learn-co-students/js-spa-project-instructions-online-web-sp-000), which is to create a SPA using Rails API backend and JS frontend, with fetch AJAX calls and OOJS.

My application concept is to create a simple web interface that could be used by my client's charitable foundation to easily record and view donation history, after I saw their current pen-and-paper strategy (not exactly a friendly format for accountant, banker, or IRS). After a brief demo of what I created, they actually want to use it – so I plan to fork it, privatize it, extend it, login-protect it, and deploy it!

Developed on Ruby 2.6.1 and Rails 6.0.3.4, with PostgreSQL 12 database.

I implemented a full CRUD on the main model, Donation. I did not want to create a separate form for :update, so I figured out how to repurpose the :create form to refill the form fields from the existing JS objects and utilize a hidden form field (id), the truthiness of which determines whether a :create fetch() or an :update fetch() will be called when submitted. When the form is in :update mode, the submit button flips from "Save Donation" to "Update Donation" for visual confirmation of what you're doing.

For the sake of project MVP, I utilized [water.css](https://watercss.kognise.dev/) and added a few rules of my own for some animations and further styling.

The page relies on the html `details` element, in the effort to keep things tidy and simple (sorry, IE folks). The lack of animation on the opening and closing is a little jarring, but for the sake of simplicity this time around, it's fine (yes I know there are ways to do this without jQuery, but that's for another time)

I could tinker, extend, and enhance this application endlessly, but that effort is best saved for the version I will create for my client. On to React!

![JS Project SPA screenshot](http://s-blais.com/assets/JS-project-screenshot.png)