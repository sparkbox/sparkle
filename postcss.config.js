module.exports = {
  plugins: [
    require('mdcss')({
      theme: require('mdcss-theme-github')({
        color: "rgba(0,0,0,0)",
        title: "✨ Sparkle Utility Framework",
        logo: "/",
        css: ['./primer.css','./docs.css']
      })
    })
  ]
}
