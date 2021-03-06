React = require 'react'

TileComponent = require './TileComponent.coffee'

R = React.DOM

Tiles = React.createClass
    displayName: 'Tiles'

    render: ->
        tiles = @props.tiles.map (item, index) =>
            React.createElement TileComponent, {
                key: index
                ref: item.model.uid
                tile: item
            }

        R.ul id:'board', tiles

module.exports = Tiles