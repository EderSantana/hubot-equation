# Description:
#   Render Latex equations by calling Google charts API
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   eqn me \int_0^1xdx - render the equation
#
# Author:
#   edersantana

module.exports = (robot) ->
  robot.respond /(equation|eqn)( me)? (.*)/i, (msg) ->
    eqnMe msg, msg.match[2] (url) ->
      msg.send url

eqnMe = (msg, query) ->
  url = "http://chart.apis.google.com/chart?cht=tx&chl=$" + query + "$"
