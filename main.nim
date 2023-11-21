# Import HappyX
import
  happyx,
  components/[social, project, skill],
  pages/[index],
  common


# Declare application with ID "app"
appRoutes("app"):
  mount "/" -> MainPage
