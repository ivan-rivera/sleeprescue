module.exports = {
  purge: [
    '../lib/**/*.ex',
    '../lib/**/*.leex',
    '../lib/**/*.eex',
    './js/**/*.js'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      dark: '#555B6E',
      white: "#FAF9F9",
      primary: "#89B0AE",
      supplementary: "#BEE3DB",
      secondary: "#FFD6BA"
    },
    fontFamily: {
      oxygen: ['oxygen', 'sans-serif']

    },
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
