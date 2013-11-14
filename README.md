Steps for adding Angular to a Rails app:

1. Add this to Gemfile:

group :assets do
  gem 'angularjs-rails'
end

(then run bundle install, natch)

Alternatively you can download the angular.js file and stick it in the vendor/assets/javascripts directory.

2. Add this to application.js file:

//= require angular
//= require angular-resource

You can remove the jquery too, if you want to omit it.

3. Add the following line to views/layouts/application.html.erb:

<html ng-app="Raffler">

Why? Because AngularJS gives you a large number of directives that let you associate HTML elements to models. They are attributes that start with ng- and can be added to any element. The most important attribute that you have to include in any page, if you wish to use Angular, is ng-app:

<body ng-app>
It should be added to an element that encloses the rest of the page, like the body element or an outermost div. Angular looks for it when the page loads and automatically evaluates all directives it sees on its child elements.

You can then add bindings to various other tags within the DOM and use {{ }} to output data entered into a text field without any page refresh, coooool!

4. All of this is good so far, but data will not persist if you reload the page. To make data persist, data entered will need to interact with the controller. Steps:
- add a response type of json to the appropriate methods in the controller
- create a $resource in the javascript/coffeescript file

app = angular.module("Raffler", ["ngResource"])

- add the name of the resource to the tope level ng tag in the html, like so: <html ng-app="Raffler">

- make and save a new object in the java/coffeescript file

