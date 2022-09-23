tailwind.config = {
  theme: {
    extend: {
      colors: {
        'back': '#3d3a39',
        'fore': '#51ce70'
      }
    },
    screens: {
      'mobile': {'max': '720px'},
      'tablet': {'min': '721px', 'max': '1280px'},
      'desktop': {'min': '1281px'}
    }
  }
}
