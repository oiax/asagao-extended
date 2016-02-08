$(document).on "ready page:load", ->
  toggle_occupation_name = ->
    if $("#member_occupation_number_0").prop("checked")
      $("#occupation-name-form-group").show()
    else
      $("#occupation-name-form-group").hide()

  $("input[name='member[occupation_number]']")
    .bind("click", toggle_occupation_name)
  toggle_occupation_name()
