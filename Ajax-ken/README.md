# How to AJAX
  * If you want to use jQuery, make sure the script in the `<head>`
  * How to target (what to set the listener on)
    - If you're adding something new to the page that needs a listener:
      - THEN use event delegation
    - Figure out a class or id or element to set the listener on
    - Listen for a click or submit, etc
  * Break the thing
  * AJAX it


## EVENT DELEGATION
  * $(something_that_is_already_on_the_page).on('event_of_some_sort', function(event){
    event.preventDefault();

    do something
    })



  * $(outter_thing).on("click", "from_this_inner_thing", function(){

  })
