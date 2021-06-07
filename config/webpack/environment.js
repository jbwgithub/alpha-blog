const { environment } = require('@rails/webpacker')

// Don't need jquery with Bootstrap 5
// const webpack = require("webpack")

// environment.plugins.append("Provide", new webpack.ProvidePlugin({
//   $: 'jquery',
//   jQuery: 'jquery',
//   Popper: ['popper.js', 'default']
// }))

module.exports = environment
