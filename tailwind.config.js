module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        'poppins': ['"Poppins", sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography')
  ],
}