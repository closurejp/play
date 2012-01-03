# All of the client-side templates we use in Play. These are probably more
# "partials" than full-fledged templates, and from the perspective of
# mustache.js we use the two concepts interchangeably, as we define partials in
# the global `templates` Array.
window.templates = []

templates.list = """
  <div class="list">
    {{#songs}}
      {{>song}}
    {{/songs}}
  </div>
"""

templates.song = """
  {{name}}
  by {{artist}}
  from {{album}}
"""

templates.now_playing = """
  <ul>
    <li class="name">{{name}}</li>
    <li class="artist"><em>by</em> <a href="#">{{artist}}</a></li>
    <li class="album"><em>from</em> <a href="#">{{album}}</a></li>
  </ul>

  <a class="album-art" href="#"><img src="/images/art/{{id}}.png" /></a>
"""