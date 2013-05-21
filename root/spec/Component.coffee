noflo = require 'noflo'
if typeof process is 'object' and process.title is 'node'
  chai = require 'chai' unless chai
  {%= component_name %} = require '../components/{%= component_name %}.coffee'
else
  {%= component_name %} = require '{%= name %}/components/{%= component_name %}.js'

describe '{%= component_name %} component', ->
  c = null
  ins = null
  out = null
  beforeEach ->
    c = {%= component_name %}.getComponent()
    ins = noflo.internalSocket.createSocket()
    out = noflo.internalSocket.createSocket()
    c.inPorts.in.attach ins
    c.outPorts.out.attach out