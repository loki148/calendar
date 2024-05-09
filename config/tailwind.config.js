const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        transparent: 'transparent',
        current: 'currentColor',
        black: colors.black,
        white: colors.white,
        gray: colors.gray,
        red: colors.red,
        green: colors.green,
        blue: colors.blue,
        yellow: colors.yellow,
        indigo: colors.indigo,
        purple: colors.purple,
        pink: colors.pink,
        // Add your custom colors here
        cyan: colors.cyan,
        emerald: colors.emerald,
        rose: colors.rose,
        sky: colors.sky,
      },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
  }
}
}