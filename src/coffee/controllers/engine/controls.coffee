settings = require 'app/config/settings'
cameras  = require 'controllers/engine/cameras'
renderer = require 'controllers/engine/renderer'

# if settings.debug
# 	camera = cameras.dev
# else
camera = cameras.dev

controls = new THREE.TrackballControls camera, $('canvas')[0]
controls.rotateSpeed          = 1.0
controls.zoomSpeed            = 1.2
controls.panSpeed             = 0.8
controls.noZoom 	          = false
controls.noPan  	          = false
controls.staticMoving 		  = true
controls.dynamicDampingFactor = 0.5

module.exports = controls 