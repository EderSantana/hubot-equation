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
  robot.respond /eqn me (.*)/i, (msg) ->
    query = msg.match[1].replace(/\ /g,'%20')
    url = "http://chart.apis.google.com/chart?cht=tx&chl=" + query
    msg.send url
