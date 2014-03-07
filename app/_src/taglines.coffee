taglines = ['Delightfully Gregarious!',
            'Demonstrably Google-able!',
            'deceptively generic.',
            'Debatably Gorgeous!',
            'Debatably Geosynchronous!',
            'Definitionally Garfunkulous!',
            'Duly Galactophagous!',
            'Decidedly Gabby!',
            'Deservedly Gelastic!',
            'Denominated <a target="_blank" href="http://www.behindthename.com/name/donald">Gaelic-ly</a>!',
            'Doggedly Groovy!',
            'Dubiously Grownup!',
            'distinguished gentleman.',
            'Drily Grandiloquent!',
            'Dialogue Guaranteed!',
            'Decently Groundbreaking!',
            'Dextrally Greyish &rarr;',
            '[Described as Good]']

change_tagline = (event, choicefn = (n) -> (n+1) % taglines.length) ->
  return if this != event.target
  $this = $(this)
  choice = choicefn($this.data('choice-index'))
  $(this).data('choice-index', choice)
  $(this).html(taglines[choice])
    .hide()
    .fadeIn(1100)

$ ->
  random_choice = (n) -> Math.floor(Math.random()*taglines.length)

  h2 = $('header h2')
  h2.on 'click', change_tagline
  h2.css('visibility','visible').trigger 'click', random_choice
