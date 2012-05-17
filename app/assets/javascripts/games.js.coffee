# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  
  $("#game_sport_id").val $.cookie("sport") || 1
  $("#game_winner_id").val $.cookie("winner")
  $('#game_sport_id, #game_winner_id, #game_loser_id').chosen({'search_contains': true})

  $('.chzn-single').focus (e) ->
    e.preventDefault()

  $('#game_loser_id_chzn .chzn-single:first').focus()

  $("form#new_game").submit (f) ->
    $.cookie "sport", $("#game_sport_id").val(), { expires: 365 }
    $.cookie "winner", $("#game_winner_id").val(), { expires: 365 }
