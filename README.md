# Snowday
## Summary

This project is to demonstrate a bug in Safari where loading a webpage over H2 will fail if the page is over a certain length.

You will notice the page loads just fine in:
  - Chrome
  - Firefox
  - cURL

I have added a fifth test that has identical HTML to test 1 but doesn't use templates or views to render the page.
Instead it is a giant heredoc.

It works.

## To Reproduce

First you will need elixir and erlang installed. Install them with brew:

 * Install Erlang: `brew install erlang`
 * Install Elixir: `brew install elixir `

To start the test Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Create you asset digest `mix phx.digest`
  * Start Phoenix endpoint in production mode `MIX_ENV=prod mix phx.server`

Now you can visit [`snowday.phx.sh:4000`](https://snowday.phx.sh:4000) from your browser.

You will notice that in Safari, the following URLs work:

 - https://snowday.phx.sh:4000/test/three
 - https://snowday.phx.sh:4000/test/four
 - https://snowday.phx.sh:4000/test/five

but the following ones don't:

 - https://snowday.phx.sh:4000/test/one
 - https://snowday.phx.sh:4000/test/two

I haven't figured much else out, other than they fail.
