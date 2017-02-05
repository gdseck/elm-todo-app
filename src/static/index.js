'use strict'

require('./styles/styles.css')
require('font-awesome/css/font-awesome.css')

require('./index.html')

var Elm = require('../elm/Main.elm')
var mountNode = document.getElementById('main')

var App = Elm.Main.embed(mountNode)
