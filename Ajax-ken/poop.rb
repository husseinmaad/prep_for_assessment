class Poop < ActiveRecord::Base
  validates :texture, presence: true
end
<h3><%= poop.texture %></h3>

<h1>Stuff</h1>

<div id='toilet'>
  <% @poops.each do |poop| %>
    <%= erb :"_poop", locals: { poop: poop } %>
  <% end %>
</div>

<form id="the-form" action="/poop" method="post">
  <input type="text" name="poop[texture]">
  <input type="submit" value="Flush">
</form>

<!DOCTYPE html>
<html lang="en">
<head>
  <!--
    normalize.css removes cross-browser differences in defaults, e.g.,
    differences in how form elements appear between Firefox and IE
    See: http://necolas.github.com/normalize.css/
  -->
  <link rel="stylesheet" href="/css/normalize.css">
  <!--
    application.css is where you put your styles
  -->
  <link rel="stylesheet" href="/css/application.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="/js/application.js"></script>

  <title></title>
</head>
<body>
  <h1>Potty Mouth</h1>
  <% if @errors && @errors.any? %>
    <% @errors.each do |error| %>
      <%= error %>
    <% end %>
  <% end %>
  <%= yield %>
</body>
</html>
